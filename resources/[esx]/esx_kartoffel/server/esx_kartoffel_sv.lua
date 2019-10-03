ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingTurtle     = {}
local PlayersTransformingTurtle   = {}
local PlayersSellingTurtle        = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(5000, CountCops)

end

CountCops()

--turtle
local function HarvestTurtle(source)

	if CopsConnected < Config.RequiredCopsTurtle then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsTurtle)
		return
	end

	SetTimeout(Config.TimeToFarm, function()

		if PlayersHarvestingTurtle[source] == true then

			local _source = source
			local xPlayer  = ESX.GetPlayerFromId(_source)

			local turtle = xPlayer.getInventoryItem('kartoffel')

			if turtle.limit ~= -1 and turtle.count >= turtle.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_turtle'))
			else
				xPlayer.addInventoryItem('kartoffel', 1)
				HarvestTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kartoffel:startHarvestTurtle')
AddEventHandler('esx_kartoffel:startHarvestTurtle', function()

	local _source = source

	PlayersHarvestingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestTurtle(_source)

end)

RegisterServerEvent('esx_kartoffel:stopHarvestTurtle')
AddEventHandler('esx_kartoffel:stopHarvestTurtle', function()

	local _source = source

	PlayersHarvestingTurtle[_source] = false

end)

local function TransformTurtle(source)

	if CopsConnected < Config.RequiredCopsTurtle then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsTurtle)
		return
	end

	SetTimeout(Config.TimeToProcess, function()

		if PlayersTransformingTurtle[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local turtleQuantity = xPlayer.getInventoryItem('kartoffel').count
			local meatQuantity = xPlayer.getInventoryItem('bolchips').count

			if meatQuantity > 50 then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_meat'))
			elseif turtleQuantity < 1 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_turtle'))
			else
				xPlayer.removeInventoryItem('kartoffel', 1)
				xPlayer.addInventoryItem('bolchips', 1)
			
				TransformTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kartoffel:startTransformTurtle')
AddEventHandler('esx_kartoffel:startTransformTurtle', function()

	local _source = source

	PlayersTransformingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformTurtle(_source)

end)

RegisterServerEvent('esx_kartoffel:stopTransformTurtle')
AddEventHandler('esx_kartoffel:stopTransformTurtle', function()

	local _source = source

	PlayersTransformingTurtle[_source] = false

end)

local function SellTurtle(source)

	if CopsConnected < Config.RequiredCopsTurtle then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsTurtle)
		return
	end

	SetTimeout(Config.TimeToSell, function()

		if PlayersSellingTurtle[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local meatQuantity = xPlayer.getInventoryItem('bolchips').count

			if meatQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_meat_sale'))
			else			
				xPlayer.removeInventoryItem('bolchips', 1)
					xPlayer.addMoney(45)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
				
				SellTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kartoffel:startSellTurtle')
AddEventHandler('esx_kartoffel:startSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

	SellTurtle(_source)

end)

RegisterServerEvent('esx_kartoffel:stopSellTurtle')
AddEventHandler('esx_kartoffel:stopSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = false

end)


-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('esx_kartoffel:GetUserInventory')
AddEventHandler('esx_kartoffel:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_kartoffel:ReturnInventory', 
    	_source,
		xPlayer.getInventoryItem('kartoffel').count, 
		xPlayer.getInventoryItem('bolchips').count,
		xPlayer.job.name, 
		currentZone
    )
end)
