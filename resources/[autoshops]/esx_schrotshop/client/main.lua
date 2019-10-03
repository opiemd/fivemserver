local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local Categories             = {}
local Vehicles               = {}
local CurrentVehicleData      = nil

ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(10000)

	ESX.TriggerServerCallback('esx_schrotshop:getCategories', function(Categories)
		Categories = Categories
	end)


	ESX.TriggerServerCallback('esx_schrotshop:getVehicles', function(vehicles)
		Vehicles = vehicles
	end)

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx_schrotshop:sendCategories')
AddEventHandler('esx_schrotshop:sendCategories', function(Categories)
	Categories = Categories
end)


RegisterNetEvent('esx_schrotshop:sendVehicles')
AddEventHandler('esx_schrotshop:sendVehicles', function(vehicles)
	Vehicles = vehicles
end)



-- Entered Marker
AddEventHandler('esx_schrotshop:hasEnteredMarker', function (zone)
	if zone == 'ShopEntering' then
		CurrentAction     = 'schrot_menu'
		CurrentActionMsg  = _U('schrot_menu')
		CurrentActionData = {}
	elseif zone == 'ResellVehicle' then
		local playerPed = PlayerPedId()
		
		if IsPedSittingInAnyVehicle(playerPed) then
			local vehicle     = GetVehiclePedIsIn(playerPed, false)
			local vehicleData, model, resellPrice, plate
			
			if GetPedInVehicleSeat(vehicle, -1) == playerPed then
				for i=1, #Vehicles, 1 do
					if GetHashKey(Vehicles[i].model) == GetEntityModel(vehicle) then
						vehicleData = Vehicles[i]
						break
					end
				end
	
				resellPrice = ESX.Math.Round(vehicleData.price / 100 * Config.ResellPercentage)
				model = GetEntityModel(vehicle)
				plate = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle))
	
				CurrentAction    = 'resell_vehicle'
				CurrentActionMsg = _U('sell_menu', vehicleData.name, ESX.Math.GroupDigits(resellPrice))
	
				CurrentActionData = {
					vehicle = vehicle,
					label = vehicleData.name,
					price = resellPrice,
					model = model,
					plate = plate
				}
			end
		end
		
	end
end)


-- Exited Marker
AddEventHandler('esx_schrotshop:hasExitedMarker', function (zone)
	if not IsInShopMenu then
		ESX.UI.Menu.CloseAll()
	end
	
	CurrentAction = nil
end)



-- Create Blips
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(Config.Zones.ResellVehicle.Pos.x, Config.Zones.ResellVehicle.Pos.y, Config.Zones.ResellVehicle.Pos.z)

	SetBlipSprite (blip, 467)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.2)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(_U('schrot'))
	EndTextCommandSetBlipName(blip)
end)

-- Draw Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local coords = GetEntityCoords(PlayerPedId())
		local canSleep = true

		for k,v in pairs(Config.Zones) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
				canSleep = false
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end
		
		if canSleep then
			Citizen.Wait(500)
		end
	end
end)

-- Activate Menu when in Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local coords      = GetEntityCoords(PlayerPedId())
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('esx_schrotshop:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('esx_schrotshop:hasExitedMarker', LastZone)
		end
		
		if not isInMarker then
			Citizen.Wait(500)
		end
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)

		if CurrentAction == nil then
			Citizen.Wait(500)
		else
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, Keys['E']) then
				if CurrentAction == 'schrot_menu' then
				elseif CurrentAction == 'resell_vehicle' then
					ESX.TriggerServerCallback('esx_schrotshop:resellVehicle', function(vehicleSold)
						if vehicleSold then
							ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
							ESX.ShowNotification(_U('bike_sold_for', CurrentActionData.label, ESX.Math.GroupDigits(CurrentActionData.price)))
						else
							ESX.ShowNotification(_U('not_yours'))
						end
					end, CurrentActionData.plate, CurrentActionData.model)
				end
				CurrentAction = nil
			end
		end
	end
end)


function drawLoadingText(text, red, green, blue, alpha)
	SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(0.0, 0.5)
	SetTextColour(red, green, blue, alpha)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(0.5, 0.5)
end