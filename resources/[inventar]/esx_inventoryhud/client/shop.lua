local shopData = nil
local PlayerData   = {}

Keys = {
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

local Licenses = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)
        if IsInRegularShopZone(coords) or IsInMechanicZone(coords) or IsInBennysZone(coords) or IsInMedicZone(coords) or IsInAutohausZone(coords) or IsInOpieZone(coords) or IsInPoliceZone(coords) or IsInMafiaZone(coords) or IsInBahamamamasZone(coords) or IsInPhoneShopZone(coords) or IsInYouToolZone(coords) or IsInPrisonShopZone(coords) or IsInWeaponShopZone(coords) then
            if IsInRegularShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("regular")
                    Citizen.Wait(2000)
                end
            end
			if IsInMechanicZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("mechanic")
                    Citizen.Wait(2000)
                end
            end
			if IsInBennysZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("bennys")
                    Citizen.Wait(2000)
                end
            end
			if IsInMedicZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("medic")
                    Citizen.Wait(2000)
                end
            end
			if IsInAutohausZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("autohaus")
                    Citizen.Wait(2000)
                end
            end
			if IsInOpieZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("opie")
                    Citizen.Wait(2000)
                end
            end
			if IsInPoliceZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("police")
                    Citizen.Wait(2000)
                end
            end
			if IsInMafiaZone(coords) then
				if PlayerData.job ~= nil and (PlayerData.job.name == 'mafia') then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("mafia")
                    Citizen.Wait(2000)
                end
				end
            end		
			if IsInBahamamamasZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("bahamamamas")
                    Citizen.Wait(2000)
                end
            end
            if IsInPhoneShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("phoneshop")
                    Citizen.Wait(2000)
                end
            end			
            if IsInYouToolZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("youtool")
                    Citizen.Wait(2000)
                end
            end
            if IsInPrisonShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("prison")
                    Citizen.Wait(2000)
                end
            end	
            if IsInWeaponShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    if Licenses['weapon'] ~= nil then
                        OpenShopInv("weaponshop")
                        Citizen.Wait(2000)
                    else
                        exports['mythic_notify']:DoHudText('error', 'Du benötigst eine Waffenlizenz, um Waffen kaufen zu können')
                    end
                end
            end
        end
    end
end)


function OpenShopInv(shoptype)
    text = "shop"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, shoptype)

    Citizen.Wait(500)
    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end

RegisterNetEvent("suku:OpenCustomShopInventory")
AddEventHandler("suku:OpenCustomShopInventory", function(type, shopinventory)
    text = "shop"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getCustomShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, type, shopinventory)
    Citizen.Wait(500)

    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end)

RegisterNetEvent("esx_inventoryhud:openShopInventory")
AddEventHandler("esx_inventoryhud:openShopInventory", function(data, inventory)
        setShopInventoryData(data, inventory, weapons)
        openShopInventory()
end)

function setShopInventoryData(data, inventory)
    shopData = data

    SendNUIMessage(
        {
            action = "setInfoText",
            text = data.text
        }
    )

    items = {}

    SendNUIMessage(
        {
            action = "setShopInventoryItems",
            itemList = inventory
        }
    )
end

function openShopInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "shop"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback("TakeFromShop", function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("suku:SellItemToPlayer", GetPlayerServerId(PlayerId()), data.item.type, data.item.name, tonumber(data.number))
        end

        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNetEvent("suku:AddAmmoToWeapon")
AddEventHandler("suku:AddAmmoToWeapon", function(hash, amount)
    AddAmmoToPed(GetPlayerPed(-1), hash, amount)
end)

function IsInRegularShopZone(coords)
    RegularShop = Config.Shops.RegularShop.Locations
    for i = 1, #RegularShop, 1 do
        if GetDistanceBetweenCoords(coords, RegularShop[i].x, RegularShop[i].y, RegularShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInMechanicZone(coords)
    Mechanic = Config.Shops.Mechanic.Locations
    for i = 1, #Mechanic, 1 do
        if GetDistanceBetweenCoords(coords, Mechanic[i].x, Mechanic[i].y, Mechanic[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInBennysZone(coords)
    Bennys = Config.Shops.Bennys.Locations
    for i = 1, #Bennys, 1 do
        if GetDistanceBetweenCoords(coords, Bennys[i].x, Bennys[i].y, Bennys[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInMedicZone(coords)
    Medic = Config.Shops.Medic.Locations
    for i = 1, #Medic, 1 do
        if GetDistanceBetweenCoords(coords, Medic[i].x, Medic[i].y, Medic[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInAutohausZone(coords)
    Autohaus = Config.Shops.Autohaus.Locations
    for i = 1, #Autohaus, 1 do
        if GetDistanceBetweenCoords(coords, Autohaus[i].x, Autohaus[i].y, Autohaus[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInOpieZone(coords)
    Opie = Config.Shops.Opie.Locations
    for i = 1, #Opie, 1 do
        if GetDistanceBetweenCoords(coords, Opie[i].x, Opie[i].y, Opie[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInPoliceZone(coords)
    Police = Config.Shops.Police.Locations
    for i = 1, #Police, 1 do
        if GetDistanceBetweenCoords(coords, Police[i].x, Police[i].y, Police[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInMafiaZone(coords)
    Mafia = Config.Shops.Mafia.Locations
    for i = 1, #Mafia, 1 do
        if GetDistanceBetweenCoords(coords, Mafia[i].x, Mafia[i].y, Mafia[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInBahamamamasZone(coords)
    Bahamamamas = Config.Shops.Bahamamamas.Locations
    for i = 1, #Bahamamamas, 1 do
        if GetDistanceBetweenCoords(coords, Bahamamamas[i].x, Bahamamamas[i].y, Bahamamamas[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInPhoneShopZone(coords)
    PhoneShop = Config.Shops.PhoneShop.Locations
    for i = 1, #PhoneShop, 1 do
        if GetDistanceBetweenCoords(coords, PhoneShop[i].x, PhoneShop[i].y, PhoneShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInYouToolZone(coords)
    YouTool = Config.Shops.YouTool.Locations
    for i = 1, #YouTool, 1 do
        if GetDistanceBetweenCoords(coords, YouTool[i].x, YouTool[i].y, YouTool[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInPrisonShopZone(coords)
    PrisonShop = Config.Shops.PrisonShop.Locations
    for i = 1, #PrisonShop, 1 do
        if GetDistanceBetweenCoords(coords, PrisonShop[i].x, PrisonShop[i].y, PrisonShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInWeaponShopZone(coords)
    WeaponShop = Config.Shops.WeaponShop.Locations
    for i = 1, #WeaponShop, 1 do
        if GetDistanceBetweenCoords(coords, WeaponShop[i].x, WeaponShop[i].y, WeaponShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        if GetDistanceBetweenCoords(coords, Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z, true) < 3.0 then
            ESX.Game.Utils.DrawText3D(vector3(Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z), "Drücke [E] um den Shop zu öffnen", 0.6)

            if IsControlJustReleased(0, Keys["E"]) then
                if Licenses['weapon'] == nil then
                    OpenBuyLicenseMenu()
                else
                    exports['mythic_notify']:DoHudText('error', 'Du hast bereits eine Schusswaffenlizenz!')
                end
                Citizen.Wait(2000)
            end
        end
    end
end)

RegisterNetEvent('suku:GetLicenses')
AddEventHandler('suku:GetLicenses', function (licenses)
    for i = 1, #licenses, 1 do
        Licenses[licenses[i].type] = true
    end
end)

function OpenBuyLicenseMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_license',{
        title = 'Register a License?',
        elements = {
          { label = 'Ja' ..' ($' .. Config.LicensePrice ..')', value = 'yes' },
          { label = 'Nein', value = 'no' },
        }
      },
      function (data, menu)
        if data.current.value == 'yes' then
            TriggerServerEvent('suku:buyLicense')
        end
        menu.close()
    end,
    function (data, menu)
        menu.close()
    end)
end

Citizen.CreateThread(function()
    player = GetPlayerPed(-1)
    coords = GetEntityCoords(player)
	
	
    for k, v in pairs(Config.Shops.RegularShop.Locations) do
        CreateBlip(vector3(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z ), "Gemischtwarenladen", 3.0, Config.Color, Config.ShopBlipID)
    end
	
	for k, v in pairs(Config.Shops.Mechanic.Locations) do
        CreateBlip(vector3(Config.Shops.Mechanic.Locations[k].x, Config.Shops.Mechanic.Locations[k].y, Config.Shops.Mechanic.Locations[k].z ), "Mechanic Shop", 3.0, Config.Color, Config.ShopBlipID)
    end
	
	for k, v in pairs(Config.Shops.Bennys.Locations) do
        CreateBlip(vector3(Config.Shops.Bennys.Locations[k].x, Config.Shops.Bennys.Locations[k].y, Config.Shops.Bennys.Locations[k].z ), "Bennys Shop", 3.0, Config.Color, Config.ShopBlipID)
    end

	for k, v in pairs(Config.Shops.Medic.Locations) do
        CreateBlip(vector3(Config.Shops.Medic.Locations[k].x, Config.Shops.Medic.Locations[k].y, Config.Shops.Medic.Locations[k].z ), "Medic Shop", 3.0, Config.Color, Config.ShopBlipID)
    end

	for k, v in pairs(Config.Shops.Autohaus.Locations) do
        CreateBlip(vector3(Config.Shops.Autohaus.Locations[k].x, Config.Shops.Autohaus.Locations[k].y, Config.Shops.Autohaus.Locations[k].z ), "Autohaus Shop", 3.0, Config.Color, Config.ShopBlipID)
    end

	for k, v in pairs(Config.Shops.Opie.Locations) do
        CreateBlip(vector3(Config.Shops.Opie.Locations[k].x, Config.Shops.Opie.Locations[k].y, Config.Shops.Opie.Locations[k].z ), "Opie Shop", 3.0, Config.Color, Config.ShopBlipID)
    end

	for k, v in pairs(Config.Shops.Police.Locations) do
        CreateBlip(vector3(Config.Shops.Police.Locations[k].x, Config.Shops.Police.Locations[k].y, Config.Shops.Police.Locations[k].z ), "Police Shop", 3.0, Config.Color, Config.ShopBlipID)
    end

	for k, v in pairs(Config.Shops.Mafia.Locations) do
        CreateBlip(vector3(Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z ), "Mafia Shop", 3.0, Config.Color, Config.MafiaBlipID)
    end	

	for k, v in pairs(Config.Shops.Bahamamamas.Locations) do
        CreateBlip(vector3(Config.Shops.Bahamamamas.Locations[k].x, Config.Shops.Bahamamamas.Locations[k].y, Config.Shops.Bahamamamas.Locations[k].z ), "Getränke Bar", 3.0, Config.Color, Config.BahamamamasBlipID)
    end
	
	for k, v in pairs(Config.Shops.PhoneShop.Locations) do
        CreateBlip(vector3(Config.Shops.PhoneShop.Locations[k].x, Config.Shops.PhoneShop.Locations[k].y, Config.Shops.PhoneShop.Locations[k].z ), "Telefon Laden", 3.0, Config.Color, Config.PhoneShopBlipID)
    end	

    for k, v in pairs(Config.Shops.YouTool.Locations) do
        CreateBlip(vector3(Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z ), "Baumarkt", 3.0, Config.Color, Config.YouToolBlipID)
    end

    for k, v in pairs(Config.Shops.PrisonShop.Locations) do
        CreateBlip(vector3(Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z), "Gefängnis Shop", 3.0, Config.Color, Config.PrisonShopBlipID)
    end

    for k, v in pairs(Config.Shops.WeaponShop.Locations) do
        CreateBlip(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z), "Waffenladen", 3.0, Config.WeaponColor, Config.WeaponShopBlipID)
    end

    CreateBlip(vector3(-755.79, 5596.07, 41.67), "Cablecart", 3.0, 4, 36)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        for k, v in pairs(Config.Shops.RegularShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end
		
        for k, v in pairs(Config.Shops.Mechanic.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Mechanic.Locations[k].x, Config.Shops.Mechanic.Locations[k].y, Config.Shops.Mechanic.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Mechanic.Locations[k].x, Config.Shops.Mechanic.Locations[k].y, Config.Shops.Mechanic.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Bennys.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Bennys.Locations[k].x, Config.Shops.Bennys.Locations[k].y, Config.Shops.Bennys.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Bennys.Locations[k].x, Config.Shops.Bennys.Locations[k].y, Config.Shops.Bennys.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Medic.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Medic.Locations[k].x, Config.Shops.Medic.Locations[k].y, Config.Shops.Medic.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Medic.Locations[k].x, Config.Shops.Medic.Locations[k].y, Config.Shops.Medic.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Autohaus.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Autohaus.Locations[k].x, Config.Shops.Autohaus.Locations[k].y, Config.Shops.Autohaus.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Autohaus.Locations[k].x, Config.Shops.Autohaus.Locations[k].y, Config.Shops.Autohaus.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Opie.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Opie.Locations[k].x, Config.Shops.Opie.Locations[k].y, Config.Shops.Opie.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Opie.Locations[k].x, Config.Shops.Opie.Locations[k].y, Config.Shops.Opie.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Police.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Police.Locations[k].x, Config.Shops.Police.Locations[k].y, Config.Shops.Police.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Police.Locations[k].x, Config.Shops.Police.Locations[k].y, Config.Shops.Police.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Mafia.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Bahamamamas.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Bahamamamas.Locations[k].x, Config.Shops.Bahamamamas.Locations[k].y, Config.Shops.Bahamamamas.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Bahamamamas.Locations[k].x, Config.Shops.Bahamamamas.Locations[k].y, Config.Shops.Bahamamamas.Locations[k].z + 1.0), "Drücke [E] um die Bar zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.PhoneShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.PhoneShop.Locations[k].x, Config.Shops.PhoneShop.Locations[k].y, Config.Shops.PhoneShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.PhoneShop.Locations[k].x, Config.Shops.PhoneShop.Locations[k].y, Config.Shops.PhoneShop.Locations[k].z + 1.0), "Drücke [E] um denn Laden zu öffnen", 0.6)
            end
        end			

        for k, v in pairs(Config.Shops.YouTool.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.PrisonShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.WeaponShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z + 1.0), "Drücke [E] um den Shop zu öffnen", 0.6)
            end
        end
    end
end)

function CreateBlip(coords, text, radius, color, sprite)
	local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip, sprite)
	SetBlipColour(blip, color)
	SetBlipScale(blip, 0.8)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end