let data = null;

$(function() {
	$('body').css('background', 'transparent');
	
	window.addEventListener('message', function(event) {
		if (event.data.enable) {
			data = event.data.data;
			
			SetupMenu()
			$('#wrap').fadeIn();
		}
	});
	
	$('#btn-buy-level').click(function() {
		$('#wrap').hide();
		$.post('https://lab_battlepass/buy_level', JSON.stringify({}));
	});
	
	document.onkeyup = function(event) {
		if (event.key == 'Escape') {
			$('#wrap').hide();
			$.post('https://lab_battlepass/quit', JSON.stringify({}));
		}
	};
});

function SetupMenu() {
	GenerateProgress();
	GenerateRewards();
	GenerateLootboxes();
	
	if (data.nextLevelEta != 0) {
		$('#before-get-exp-time').html(data.nextLevelEta +' minute(s)');
	}
	else {
		$('#before-get-exp-time').html('CLAIM YOUR REWARD');
	}
}

function ClaimReward() {
	$('#wrap').hide();
	$.post('https://lab_battlepass/reward', JSON.stringify({}));
}

function BuyLootbox(id, useCoin) {
	$('#wrap').hide();
	$.post('https://lab_battlepass/buy_lootbox', JSON.stringify({id, useCoin}));
}

function GenerateProgress() {
	let xpPerc = Math.floor(data.xp/data.maxXp*100)
	
	$('#exp-progress').html(`
	<div id="exp-progress">
		<table>
		<tr>
			<td>
			<span id="exp-current">`+ data.xp +`</span> / <span id="exp-goal">`+ data.maxXp +`</span><br/>
			<span id="exp-progress-desc">CURRENT XP</span>
			</td>
			<td><center><div id="levelbar"></div></center></td>
		</tr>
		</table>
		<script>
		var bar = new ProgressBar.Circle(levelbar, {
		  strokeWidth: 10,
		  color: 'rgba(255,255,255,0.1)',
		  trailColor: 'rgba(255,255,255,0.2)',
		  trailWidth: 1,
		  easing: 'easeInOut',
		  duration: 2000,
		  svgStyle: null,
		  text: {
			value: '',
			alignToBottom: false
		  },
		  
		  // Set default step function for all animate calls
		  step: (state, bar) => {
			bar.path.setAttribute('stroke', state.color);
			var value = Math.round(bar.value() * 100);
			bar.setText("<span id='level-circle'>`+ data.level +`</span><br/><span id='level-circle-desc'>LEVEL</span>");
			bar.text.style.color = state.color;
		  }
		});
		
		bar.animate(`+ xpPerc +` / 100);
		
		</script>
	</div>`);
}

function GenerateRewards() {
	let finalHTML = ``;
	
	for (let i = 0; i < data.rewards.length; i++) {
		let itemStatus;
		let itemReceived;
		let itemLevel = i + 1;
		let backgroundImg = `nui://esx_inventoryhud/html/img/items/`+ data.rewards[i].item +`.png`
		
		if (i % 5 == 0) {
			if (data.level >= itemLevel && data.level < (itemLevel + 5)) {
				finalHTML += `<div class="item active">`;
			}
			else {
				finalHTML += `<div class="item">`;
			}
		}
		
		if (data.level == itemLevel) {
			let xpPerc = Math.floor(data.xp/data.maxXp*100)
			
			if (xpPerc == 100) {
				itemStatus = `<div id="battlepass-done"><i class="fas fa-check"></i> DONE</div>`;
				itemReceived = `<button onclick="ClaimReward()" id="battlepass-claim">CLAIM REWARD</button>`;
			}
			else {
				itemStatus = `<div id="battlepass-accomp">ACCOMPLISHMENT</div>`;
				itemReceived = `<div id="battlepass-inprogress" class="w3-border">IN PROGRESS <div class="w3-red" style="width:`+ xpPerc +`%"></div></div>`;
			}
		}
		else if (data.level < itemLevel) {
			itemStatus = `<div id="battlepass-waiting">WAITING</div>`;
			itemReceived = `<div id="battlepass-received">WAITING</div>`;
		}
		else if (data.level > itemLevel) {
			itemStatus = `<div id="battlepass-done"><i class="fas fa-check"></i> DONE</div>`;
			itemReceived = `<div id="battlepass-received">RECEIVED</div>`;
		}
		
		finalHTML += `
		<div id="battlepass-block">
			<div id="battlepass-level">LEVEL `+ itemLevel +`</div>
			<div id="battlepass-block-bg">
				`+ itemStatus +`
				<div id="battlepass-reward-img" style="background:url(`+ backgroundImg +`) center center no-repeat;background-size:cover;background-origin:content-box;"></div>
				<div id="battlepass-reward-title">`+ data.rewards[i].title +`</div>
				<div id="battlepass-reward-desc">`+ data.rewards[i].desc +`</div>
				`+ itemReceived +`
			</div>
		</div>`;
		
		if (i % 5 == 4) {
			finalHTML += `</div>`;
		}
	}
	
	$("#rewards").html(finalHTML);
}

function GenerateLootboxes() {
	$('#lootboxes').html('');
	
	for (let i = 0; i < data.lootboxes.length; i++) {
		let moneyText;
		let coinText;
		let lootboxId = (i + 1);
		let tooltip = CreateTooltip(data.lootboxes_re[i], data.lootboxes[i].type);
		
		if (data.lootboxes[i].moneyPrice) {
			moneyText = `
			<td>
				<div id="lootbox-money">
					MONEY PRICE:<br/>
					<span id="lootbox-money-price">`+ data.lootboxes[i].moneyPrice +`€</span>
				</div>
				<button onclick="BuyLootbox(`+ lootboxId +`, false)" id="lootbox-money-open">OPEN</button>
			</td>`
		}
		else {
			moneyText = `
			<td>
				<div id="lootbox-not-available">
					NOT AVAILABLE<br/>WITH MONEY
				</div>
				<button id="lootbox-not-available-open">OPEN</button>
			</td>`
		}
		
		if (data.lootboxes[i].coinPrice) {
			coinText = `
			<td>
				<div id="lootbox-coins">
					DC COINS:<br/>
					<span id="lootbox-coins-price"><i class="fas fa-coins"></i> `+ data.lootboxes[i].coinPrice +`</span>
				</div>
				<button onclick="BuyLootbox(`+ lootboxId +`, true)" id="lootbox-coins-open">OPEN</button>
			</td>`
		}
		else {
			coinText = `
			<td>
				<div id="lootbox-not-available">
					NOT AVAILABLE<br/>WITH COINS
				</div>
				<button id="lootbox-not-available-open">OPEN</button>
			</td>`
		}
		
		$('#lootboxes').append(
		`<div id="lootbox-block">
			<div id="lootbox-drops">
				<i class="fas fa-info"></i> DROPS
				`+ tooltip +`
			</div>
			<div id="unique">UNIQUE</div>
			<div id="lootbox-img" style="background:url('./images/`+ data.lootboxes[i].name +`.png') center center no-repeat;background-size:cover;background-origin:content-box;"></div>
			<div id="lootbox-title">`+ data.lootboxes[i].title +`</div>
			<table>
			<tr>
				`+ moneyText +`
				`+ coinText +`
			</tr>
			</table>
		</div>`)
	}
}

function CreateTooltip(data, type) {
	let html = `<span class="tooltiptext">`;
	
	$.each(data, function(index, info) {
		if (info.amount < 10000) {
			html += info.luck +`% x`+ info.amount +` `+ info.label +`<br/>`;
		}
		else {
			html += info.luck +`% `+ info.label +`<br/>`;
		}
	});
	
	html += `</span>`;
	
	return html;
}