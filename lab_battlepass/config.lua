Config = {}

Config.XpPerMinute = 6
Config.MaxXpPerLevel = 1500

Config.LevelPrice = 20

------MINIMUM VALUE MUST BE >= 60-----
Config.UpdateInterval = 600
--------------------------------------

--name is the inventory item and the image name
Config.Lootboxes = {
	[1] =	{title = 'AIO LOOTBOX',		name = 'lb_aio',		type = 'random',	moneyPrice = 80000,		coinPrice = 15},
	[2] =	{title = 'VEST LOOTBOX',	name = 'lb_vest',		type = 'item',		moneyPrice = nil,		coinPrice = 20},
	[3] =	{title = 'MONEY LOOTBOX',	name = 'lb_money',		type = 'money',		moneyPrice = nil,		coinPrice = 20},
	[4] =	{title = 'WEAPON LOOTBOX',	name = 'lb_weapon',		type = 'weapon',	moneyPrice = nil,		coinPrice = 20},
	[5] =	{title = 'MEDKIT LOOTBOX',	name = 'lb_medkit',		type = 'item',		moneyPrice = nil,		coinPrice = 15},
	[6] =	{title = 'VEHICLE LOOTBOX',	name = 'lb_vehicle',	type = 'vehicle',	moneyPrice = nil,		coinPrice = 100},
}

Config.LootboxesRewards = {
	[1] = { -- aio
		{name = 'WEAPON_ISY',			label = 'ISY',					amount = 1,			luck = 10},
		{name = 'bandage',				label = 'Bandage',				amount = 10,		luck = 30},
		{name = 'militaryvest',			label = 'Military Vest',		amount = 3,			luck = 30},
		{name = 'money',				label = '60000 Cash',			amount = 60000,		luck = 15},
		{name = 'black_money',			label = '30000 Black Money',	amount = 30000,		luck = 15},
	},
	[2] = { -- vest
		{name = 'bulletproof',			label = 'Αλεξίσφαιρο Γιλέκο',	amount = 4,			luck = 30},
		{name = 'militaryvest',			label = 'Military Vest',		amount = 3,			luck = 25},
		{name = 'armorpill',			label = 'Χάπι Armor',			amount = 20,			luck = 45},
	},
	[3] = { -- money
		{name = 'money',				label = '30000 Cash',			amount = 30000,		luck = 40},
		{name = 'black_money',			label = '15000 Black Money',	amount = 15000,		luck = 40},
		{name = 'money',				label = '60000 Cash',			amount = 60000,		luck = 10},
		{name = 'black_money',			label = '30000 Black Money',	amount = 30000,		luck = 10},
	},
	[4] = { --weapon
		{name = 'WEAPON_SCARMK17',		label = 'SCARMK17',				amount = 1,			luck = 20},
		{name = 'WEAPON_AK103',			label = 'AK103',				amount = 1,			luck = 30},
		{name = 'WEAPON_ARMK4',			label = 'ARMK4',				amount = 1,			luck = 30},
		{name = 'WEAPON_M4A5',			label = 'M4A5',					amount = 1,			luck = 10},
		{name = 'WEAPON_ISY',			label = 'ISY',					amount = 1,			luck = 10},
	},
	[5] = { -- medical
		{name = 'bandage',				label = 'Γαζες',				amount = 10,		luck = 34},
		{name = 'xapi',					label = 'Τονοτικό Χάπι',		amount = 3,		luck = 33},
		{name = 'medikit',				label = 'Κιτ πρώτων βοηθειών',	amount = 5,		luck = 33},
	},
	[6] = { -- vehicle
		{name = 'rmodp1gtr',			label = 'McLaren Senna',		amount = 1,			luck = 10},
		{name = 'r820',					label = 'Audi R8',				amount = 1,			luck = 10},
		{name = 'panamera17turbo',		label = 'Porsche Panamera',		amount = 1,			luck = 10},
		{name = 'laferrari17',			label = 'La Ferrari',			amount = 1,			luck = 10},
		{name = 'jes',					label = 'Regera',				amount = 1,			luck = 10},
		{name = 'h2m',					label = 'Hammer H2M',			amount = 1,			luck = 10},
		{name = 'divo',					label = 'Buggati Divo',			amount = 1,			luck = 10},
		{name = 'arrow',				label = 'Mercedes Arrow',		amount = 1,			luck = 10},
		{name = 'gt17',					label = 'Ford GT-17',			amount = 1,			luck = 10},
		{name = 'f8t',					label = 'Ferrari F8T',			amount = 1,			luck = 10},
	},
}

Config.LevelRewards = {

	[1] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[2] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[3] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[4] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[5] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[6] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[7] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[8] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[9] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[10] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[11] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[12] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[13] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[14] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[15] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[16] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[17] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[18] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[19] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[20] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[21] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[22] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[23] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[24] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[25] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[26] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[27] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[28] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[29] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[30] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[31] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[32] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[33] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[34] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[35] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[36] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[37] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[38] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[39] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[40] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[41] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[42] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[43] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[44] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[45] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[46] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[47] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[48] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[49] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[50] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[51] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[52] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[53] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[54] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[55] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[56] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[57] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[58] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[59] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[60] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[61] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[62] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[63] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[64] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[65] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[66] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[67] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[68] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[69] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[70] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[71] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[72] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[73] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[74] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[75] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[76] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[77] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[78] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[79] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[80] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[81] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[82] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[83] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[84] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[85] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[86] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[87] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[88] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[89] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[90] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},

	[91] = {title = 'MONEY',						item = 'cash',					amount = 20000,		type = 'money',			desc = 'WIN 20000 CASH'},
	
	[92] = {title = '200 HEALTH PILL',						item = 'xapi',					amount = 4,		type = 'item',			desc = 'WIN 4 200 HEALTH PILLS'},
	
	[93] = {title = 'PISTOL',						item = 'WEAPON_PISTOL',					amount = 1,		type = 'weapon',			desc = 'WIN 60000 CASH'},
	
	[94] = {title = 'MONEY',						item = 'cash',					amount = 50000,		type = 'money',			desc = 'WIN 70000 CASH'},
	
	[95] = {title = 'VEST',						item = 'bulletproof',					amount = 5,		type = 'item',			desc = 'WIN 5 BULLETPROOFS'},
	
	[96] = {title = 'DESERT EAGLE',				item = 'WEAPON_PISTOL50',		amount = 1,			type = 'weapon',		desc = 'WIN A DESERT EAGLE'},
	
	[97] = {title = 'MILITARY VESTS',			item = 'militaryvest',			amount = 3,			type = 'item',			desc = 'WIN 3 MILITARY VESTS'},
	
	[98] = {title = 'SCARMK17',					item = 'WEAPON_SCARMK17',		amount = 1,			type = 'weapon',		desc = 'WIN A SCARMK17 AUTOMATIC RIFLE'},
	
	[99] = {title = 'AMMO',						item = 'clip',					amount = 5,			type = 'item',			desc = 'WIN 5 RIFLE AMMO'},
	
	[100] = {title = 'LOOTBOX',						item = 'lb_aio',					amount = 1,		type = 'item',			desc = 'WIN 1 AIO LOOTBOX'},
	
}
-- lootboxes 

--[[ 

lb_vehicle
lb_aio
lb_medkit
lb_money
lb_vest
lb_weapon

]]