ESX = nil

local battlepass
local nextLevelEta = 0
local isTime 
local HasBattlePass = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('rio:getSharedObject', function(obj) ESX = obj end)
		Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Wait(100)
	end
	
	while ESX.GetPlayerData().identifier == nil do
        Wait(100)
    end
	
	ESX.PlayerData = ESX.GetPlayerData()
	Wait(250)
	
end)

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(59000)
		isTime = true
		Citizen.Wait(1000)
		TriggerServerEvent('lab_battlepass:addXP', Config.XpPerMinute, isTime)
		isTime = false
	end
end)

RegisterCommand('battlepass', function(source, args)
	ESX.TriggerServerCallback('lab_battlepass:getData', function(info)
		nextLevelETA = ESX.Math.Round((Config.MaxXpPerLevel - info['xp'])/Config.XpPerMinute)
		
		local data = {
			level			= info['level'],
			xp				= info['xp'],
			maxXp			= Config.MaxXpPerLevel,
			rewards			= Config.LevelRewards,
			lootboxes		= Config.Lootboxes,
			lootboxes_re	= Config.LootboxesRewards,
			nextLevelEta	= nextLevelETA,
		}
		
		SetNuiFocus(true, true)
		SendNUIMessage({enable = true, data = data})
	end)
end)

RegisterNetEvent('lab_battlepass:onVehicleReward')
AddEventHandler('lab_battlepass:onVehicleReward', function(model)
	local coords = GetEntityCoords(PlayerPedId())
	local plate = exports['esx_vehicleshop']:GeneratePlate()
	ESX.Game.SpawnVehicle(model, vector3(coords.x, coords.y, coords.z - 10.0), 0.0, function(vehicle)
		SetVehicleNumberPlateText(vehicle, plate)
		local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
		TriggerServerEvent('lab_battlepass:onVehicleReward', plate, vehicleProps)
		Citizen.Wait(15000)
		DeleteEntity(vehicle)
	end)
end)

RegisterNUICallback('quit', function()
	SetNuiFocus(false, false)
end)

RegisterNUICallback('reward', function()
	SetNuiFocus(false, false)
	TriggerServerEvent('lab_battlepass:reward')
end)

RegisterNUICallback('buy_lootbox', function(data)
	SetNuiFocus(false, false)
	TriggerServerEvent('lab_battlepass:buyLootbox', tonumber(data.id), data.useCoin)
end)

RegisterNUICallback('buy_level', function()
	SetNuiFocus(false, false)
	Wait(100)
	
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'buy_level', {
		title = 'BUY FULL LEVEL FOR '..Config.LevelPrice..' COINS [YES OR NO]'
	},
	function(data, menu)
		local answer = data.value or 'no'
		menu.close()
		
		if string.lower(answer) == 'yes' then
			TriggerServerEvent('lab_battlepass:buyLevel')
		end
	end,
	function(data, menu)
		menu.close()
	end)
end)

RegisterNetEvent('lab_battlepass:clientDC')
AddEventHandler('lab_battlepass:clientDC', function(amount)
	TriggerServerEvent('gods_globalexp_system:server:removedc', amount)
end)