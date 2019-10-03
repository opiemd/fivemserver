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

			local turtle = xPlayer.getInventoryItem('morfin')

			if turtle.limit ~= -1 and turtle.count >= turtle.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_turtle'))
			else
				xPlayer.addInventoryItem('morfin', 1)
				HarvestTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_heroin:startHarvestTurtle')
AddEventHandler('esx_heroin:startHarvestTurtle', function()

	local _source = source

	PlayersHarvestingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestTurtle(_source)

end)

RegisterServerEvent('esx_heroin:stopHarvestTurtle')
AddEventHandler('esx_heroin:stopHarvestTurtle', function()

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

			local turtleQuantity = xPlayer.getInventoryItem('morfin').count
			local meatQuantity = xPlayer.getInventoryItem('morfin_pooch').count

			if meatQuantity > 50 then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_meat'))
			elseif turtleQuantity < 5 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_turtle'))
			else
				xPlayer.removeInventoryItem('morfin', 5)
				xPlayer.addInventoryItem('morfin_pooch', 1)
			
				TransformTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_heroin:startTransformTurtle')
AddEventHandler('esx_heroin:startTransformTurtle', function()

	local _source = source

	PlayersTransformingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformTurtle(_source)

end)

RegisterServerEvent('esx_heroin:stopTransformTurtle')
AddEventHandler('esx_heroin:stopTransformTurtle', function()

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

			local meatQuantity = xPlayer.getInventoryItem('morfin_pooch').count

			if meatQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_meat_sale'))
			else			
				xPlayer.removeInventoryItem('morfin_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 100)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 125)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 150)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 175)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 200)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 225)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_turtle'))
                end
				
				SellTurtle(source)
			end

		end
	end)
end

RegisterServerEvent('esx_heroin:startSellTurtle')
AddEventHandler('esx_heroin:startSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

	SellTurtle(_source)

end)

RegisterServerEvent('esx_heroin:stopSellTurtle')
AddEventHandler('esx_heroin:stopSellTurtle', function()

	local _source = source

	PlayersSellingTurtle[_source] = false

end)


-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('esx_heroin:GetUserInventory')
AddEventHandler('esx_heroin:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_heroin:ReturnInventory', 
    	_source,
		xPlayer.getInventoryItem('morfin').count, 
		xPlayer.getInventoryItem('morfin_pooch').count,
		xPlayer.job.name, 
		currentZone
    )
end)
