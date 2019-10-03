ESX = nil

local Categories = {}
local Vehicles   = {}



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


function RemoveOwnedVehicle(plate)
	MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	})
end

MySQL.ready(function()
	Categories     = MySQL.Sync.fetchAll('SELECT * FROM schrot_categories')
	local vehicles = MySQL.Sync.fetchAll('SELECT * FROM schrots')


	for i=1, #vehicles, 1 do
		local vehicle = vehicles[i]

		for j=1, #Categories, 1 do
			if Categories[j].name == vehicle.category then
				vehicle.categoryLabe = Categories[j].label
				break
			end
		end

		table.insert(Vehicles, vehicle)
	end
	

	-- send information after db has loaded, making sure everyone gets vehicle information
	TriggerClientEvent('esx_schrotshop:sendCategories', -1, Categories)
	TriggerClientEvent('esx_schrotshop:sendVehicles', -1, Vehicles)
end)



ESX.RegisterServerCallback('esx_schrotshop:getCategories', function(source, cb)
	cb(Categories)
end)


ESX.RegisterServerCallback('esx_schrotshop:getVehicles', function(source, cb)
	cb(Vehicles)
end)



ESX.RegisterServerCallback('esx_schrotshop:resellVehicle', function(source, cb, plate, model)
	local resellPrice = 0

	-- calculate the resell price
	for i=1, #Vehicles, 1 do
		if GetHashKey(Vehicles[i].model) == model then
			resellPrice = ESX.Math.Round(Vehicles[i].price / 100 * Config.ResellPercentage)
			break
		end
	end
	

	if resellPrice == 0 then
		print(('esx_schrotshop: %s attempted to sell an unknown vehicle!'):format(GetPlayerIdentifiers(source)[1]))
		cb(false)
	end

	local xPlayer = ESX.GetPlayerFromId(source)
	
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND @plate = plate', {
		['@owner'] = xPlayer.identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then -- does the owner match?
			local vehicle = json.decode(result[1].vehicle)
			if vehicle.model == model then
				if vehicle.plate == plate then
					xPlayer.addMoney(resellPrice)
					RemoveOwnedVehicle(plate)
					cb(true)
				else
					print(('esx_schrotshop: %s attempted to sell an vehicle with plate mismatch!'):format(xPlayer.identifier))
					cb(false)
				end
			else
				print(('esx_schrotshop: %s attempted to sell an vehicle with model mismatch!'):format(xPlayer.identifier))
				cb(false)
			end
		else
			cb(false)
		end
	end)
end)