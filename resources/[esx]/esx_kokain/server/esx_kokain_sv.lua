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

			local turtle = xPlayer.getInventoryItem('kokain')

			if turtle.limit ~= -1 and turtle.count >= turtle.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_turtle'))
			else
				xPlayer.addInventoryItem('kokain', 1)
				HarvestTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kokain:startHarvestTurtle')
AddEventHandler('esx_kokain:startHarvestTurtle', function()

	local _source = source

	PlayersHarvestingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestTurtle(_source)

end)

RegisterServerEvent('esx_kokain:stopHarvestTurtle')
AddEventHandler('esx_kokain:stopHarvestTurtle', function()

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

			local turtleQuantity = xPlayer.getInventoryItem('kokain').count
			local meatQuantity = xPlayer.getInventoryItem('kokain_pooch').count

			if meatQuantity > 50 then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_meat'))
			elseif turtleQuantity < 5 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_turtle'))
			else
				xPlayer.removeInventoryItem('kokain', 1)
				xPlayer.addInventoryItem('kokain_pooch', 1)
			
				TransformTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kokain:startTransformTurtle')
AddEventHandler('esx_kokain:startTransformTurtle', function()

	local _source = source

	PlayersTransformingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformTurtle(_source)

end)

RegisterServerEvent('esx_kokain:stopTransformTurtle')
AddEventHandler('esx_kokain:stopTransformTurtle', function()

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

			local meatQuantity = xPlayer.getInventoryItem('kokain_pooch').count

			if meatQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_meat_sale'))
			else			
				xPlayer.removeInventoryItem('kokain_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 199)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 675)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 700)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 725)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 750)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 775)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                end
				
				SellTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_kokain:startSellTurtle')
AddEventHandler('esx_kokain:startSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

	SellTurtle(_source)

end)

RegisterServerEvent('esx_kokain:stopSellTurtle')
AddEventHandler('esx_kokain:stopSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = false

end)


-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('esx_kokain:GetUserInventory')
AddEventHandler('esx_kokain:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_kokain:ReturnInventory', 
    	_source,
		xPlayer.getInventoryItem('kokain').count, 
		xPlayer.getInventoryItem('kokain_pooch').count,
		xPlayer.job.name, 
		currentZone
    )
end)
