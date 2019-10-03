ESX = nil
local PlayerData   = {}
local kleidunganaus = {}


_menuPool = NativeUI.CreatePool()

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end

end)

function startAnim(lib, anim)
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(plyPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
	end)
end

function AddMenuClothesMenu0(menu)
	ClothesMenu0 = _menuPool:AddSubMenu(menu, "Kleidung an/aus Ziehen für Männer")

	local torsoItem = NativeUI.CreateItem("Oberteil", "")
	ClothesMenu0.SubMenu:AddItem(torsoItem)
	local pantsItem = NativeUI.CreateItem("Hose", "")
	ClothesMenu0.SubMenu:AddItem(pantsItem)
	local shoesItem = NativeUI.CreateItem("Schuhe", "")
	ClothesMenu0.SubMenu:AddItem(shoesItem)
	local bagItem = NativeUI.CreateItem("Tasche", "")
	ClothesMenu0.SubMenu:AddItem(bagItem)
	local bproofItem = NativeUI.CreateItem("Weste", "")
	ClothesMenu0.SubMenu:AddItem(bproofItem)

	ClothesMenu0.SubMenu.OnItemSelect = function(sender, item, index)
		if item == torsoItem then
			setUniform0('torso', plyPed)
		elseif item == pantsItem then
			setUniform0('pants', plyPed)
		elseif item == shoesItem then
			setUniform0('shoes', plyPed)
		elseif item == bagItem then
			setUniform0('bag', plyPed)
		elseif item == bproofItem then
			setUniform0('bproof', plyPed)
		end
	end
end

function setUniform0(value, plyPed)
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:getSkin', function(skina)
			if value == 'torso' then
				startAnim("clothingtie", "try_tie_neutral_a")
				Citizen.Wait(1000)
				ClearPedTasks(plyPed)

				if skin.torso_1 ~= skina.torso_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['torso_1'] = skin.torso_1, ['torso_2'] = skin.torso_2, ['tshirt_1'] = skin.tshirt_1, ['tshirt_2'] = skin.tshirt_2, ['arms'] = skin.arms})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['torso_1'] = 91, ['torso_2'] = 0, ['tshirt_1'] = 15, ['tshirt_2'] = 0, ['arms'] = 15})
				end
			elseif value == 'pants' then
				if skin.pants_1 ~= skina.pants_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['pants_1'] = skin.pants_1, ['pants_2'] = skin.pants_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['pants_1'] = 61, ['pants_2'] = 1})
				end
			elseif value == 'shoes' then
				if skin.shoes_1 ~= skina.shoes_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['shoes_1'] = skin.shoes_1, ['shoes_2'] = skin.shoes_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['shoes_1'] = 34, ['shoes_2'] = 0})
				end
			elseif value == 'bag' then
				if skin.bags_1 ~= skina.bags_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['bags_1'] = skin.bags_1, ['bags_2'] = skin.bags_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['bags_1'] = 0, ['bags_2'] = 0})
				end
			elseif value == 'bproof' then
				startAnim("clothingtie", "try_tie_neutral_a")
				Citizen.Wait(1000)
				ClearPedTasks(plyPed)

				if skin.bproof_1 ~= skina.bproof_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['bproof_1'] = skin.bproof_1, ['bproof_2'] = skin.bproof_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['bproof_1'] = 0, ['bproof_2'] = 0})
				end
			end
		end)
	end)
end

function AddMenuClothesMenu1(menu)
	ClothesMenu1 = _menuPool:AddSubMenu(menu, "Kleidung an/aus Ziehen für Frauen")
	local torsoItem = NativeUI.CreateItem("Oberteil", "")
	ClothesMenu1.SubMenu:AddItem(torsoItem)	
	local pantsItem = NativeUI.CreateItem("Hose", "")
	ClothesMenu1.SubMenu:AddItem(pantsItem)
	local shoesItem = NativeUI.CreateItem("Schuhe", "")
	ClothesMenu1.SubMenu:AddItem(shoesItem)
	local bagItem = NativeUI.CreateItem("Tasche", "")
	ClothesMenu1.SubMenu:AddItem(bagItem)
	local bproofItem = NativeUI.CreateItem("Weste", "")
	ClothesMenu1.SubMenu:AddItem(bproofItem)

	ClothesMenu1.SubMenu.OnItemSelect = function(sender, item, index)
		if item == glassesItem then
			setUniform1('glasses', plyPed)
		elseif item == torsoItem then
			setUniform1('torso', plyPed)
		elseif item == pantsItem then
			setUniform1('pants', plyPed)			
		elseif item == shoesItem then
			setUniform1('shoes', plyPed)
		elseif item == bagItem then
			setUniform1('bag', plyPed)
		elseif item == bproofItem then
			setUniform1('bproof', plyPed)
		end
	end
end

function setUniform1(value, plyPed)
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:getSkin', function(skina)
			if value == 'torso' then
				startAnim("clothingtie", "try_tie_neutral_a")
				Citizen.Wait(1000)
				ClearPedTasks(plyPed)

				if skin.torso_1 ~= skina.torso_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['torso_1'] = skin.torso_1, ['torso_2'] = skin.torso_2, ['tshirt_1'] = skin.tshirt_1, ['tshirt_2'] = skin.tshirt_2, ['arms'] = skin.arms})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['torso_1'] = 18, ['torso_2'] = 1, ['tshirt_1'] = 6, ['tshirt_2'] = 0, ['arms'] = 15})
				end
			elseif value == 'pants' then
				if skin.pants_1 ~= skina.pants_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['pants_1'] = skin.pants_1, ['pants_2'] = skin.pants_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['pants_1'] = 17, ['pants_2'] = 1})
				end
			elseif value == 'shoes' then
				if skin.shoes_1 ~= skina.shoes_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['shoes_1'] = skin.shoes_1, ['shoes_2'] = skin.shoes_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['shoes_1'] = 35, ['shoes_2'] = 0})
				end				
			elseif value == 'bag' then
				if skin.bags_1 ~= skina.bags_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['bags_1'] = skin.bags_1, ['bags_2'] = skin.bags_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['bags_1'] = 0, ['bags_2'] = 0})
				end
			elseif value == 'bproof' then
				startAnim("clothingtie", "try_tie_neutral_a")
				Citizen.Wait(1000)
				ClearPedTasks(plyPed)

				if skin.bproof_1 ~= skina.bproof_1 then
					TriggerEvent('skinchanger:loadClothes', skina, {['bproof_1'] = skin.bproof_1, ['bproof_2'] = skin.bproof_2})
				else
					TriggerEvent('skinchanger:loadClothes', skina, {['bproof_1'] = 0, ['bproof_2'] = 0})
				end
			end
		end)
	end)
end

function AddMenuAccessoryMenu0(menu)
	accessoryMenu0 = _menuPool:AddSubMenu(menu, "Accessoires der Männer")

	local earsItem = NativeUI.CreateItem("Ohren Accessoires", "")
	accessoryMenu0.SubMenu:AddItem(earsItem)
	local glassesItem = NativeUI.CreateItem("Brille", "")
	accessoryMenu0.SubMenu:AddItem(glassesItem)
	local helmetItem = NativeUI.CreateItem("Hut/Helm", "")
	accessoryMenu0.SubMenu:AddItem(helmetItem)
	local maskItem = NativeUI.CreateItem("Maske", "")
	accessoryMenu0.SubMenu:AddItem(maskItem)

	accessoryMenu0.SubMenu.OnItemSelect = function(sender, item, index)
		if item == earsItem then
			SetUnsetAccessory0('Ears')
		elseif item == glassesItem then
			SetUnsetAccessory0('Glasses')
		elseif item == helmetItem then
			SetUnsetAccessory0('Helmet')
		elseif item == maskItem then
			SetUnsetAccessory0('Mask')
		end
	end
end

function SetUnsetAccessory0(accessory)
	ESX.TriggerServerCallback('esx_accessories:get', function(hasAccessory, accessorySkin)
		local _accessory = string.lower(accessory)

		if hasAccessory then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local mAccessory = -1
				local mColor = 0

				if _accessory == 'ears' then
				elseif _accessory == "glasses" then
					mAccessory = 0
					startAnim("clothingspecs", "try_glasses_positive_a")
					Citizen.Wait(1000)
					ClearPedTasks(plyPed)
				elseif _accessory == 'helmet' then
					startAnim("missfbi4", "takeoff_mask")
					Citizen.Wait(1000)
					ClearPedTasks(plyPed)
				elseif _accessory == "mask" then
					mAccessory = 0
					startAnim("missfbi4", "takeoff_mask")
					Citizen.Wait(850)
					ClearPedTasks(plyPed)
				end

				if skin[_accessory .. '_1'] == mAccessory then
					mAccessory = accessorySkin[_accessory .. '_1']
					mColor = accessorySkin[_accessory .. '_2']
				end

				local accessorySkin = {}
				accessorySkin[_accessory .. '_1'] = mAccessory
				accessorySkin[_accessory .. '_2'] = mColor
				TriggerEvent('skinchanger:loadClothes', skin, accessorySkin)
			end)
		else
			if _accessory == 'ears' then
				ESX.ShowNotification("Du hast keine Ohren Accessoires")
			elseif _accessory == 'glasses' then
				ESX.ShowNotification("Du hast keine Brille")
			elseif _accessory == 'helmet' then
				ESX.ShowNotification("Du hast kein Hut/Helm")
			elseif _accessory == 'mask' then
				ESX.ShowNotification("Du hast keine Maske")
			end
		end

	end, accessory)
end

function AddMenuAccessoryMenu1(menu)
	accessoryMenu1 = _menuPool:AddSubMenu(menu, "Accessoires der Frauen")

	local earsItem = NativeUI.CreateItem("Ohringe", "")
	accessoryMenu1.SubMenu:AddItem(earsItem)
	local glassesItem = NativeUI.CreateItem("Brille", "")
	accessoryMenu1.SubMenu:AddItem(glassesItem)
	local helmetItem = NativeUI.CreateItem("Hut/Helm", "")
	accessoryMenu1.SubMenu:AddItem(helmetItem)
	local maskItem = NativeUI.CreateItem("Maske", "")
	accessoryMenu1.SubMenu:AddItem(maskItem)

	accessoryMenu1.SubMenu.OnItemSelect = function(sender, item, index)
		if item == earsItem then
			SetUnsetAccessory('Ears')
		elseif item == glassesItem then
			SetUnsetAccessory('Glasses')
		elseif item == helmetItem then
			SetUnsetAccessory('Helmet')
		elseif item == maskItem then
			SetUnsetAccessory('Mask')
		end
	end
end

function SetUnsetAccessory(accessory)
	ESX.TriggerServerCallback('esx_accessories:get', function(hasAccessory, accessorySkin)
		local _accessory = string.lower(accessory)

		if hasAccessory then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local mAccessory = -1
				local mColor = 0

				if _accessory == 'ears' then
				elseif _accessory == "glasses" then
					mAccessory = 5
					startAnim("clothingspecs", "try_glasses_positive_a")
					Citizen.Wait(1000)
					ClearPedTasks(plyPed)
				elseif _accessory == 'helmet' then
					startAnim("missfbi4", "takeoff_mask")
					Citizen.Wait(1000)
					ClearPedTasks(plyPed)
				elseif _accessory == "mask" then
					mAccessory = 0
					startAnim("missfbi4", "takeoff_mask")
					Citizen.Wait(850)
					ClearPedTasks(plyPed)
				end

				if skin[_accessory .. '_1'] == mAccessory then
					mAccessory = accessorySkin[_accessory .. '_1']
					mColor = accessorySkin[_accessory .. '_2']
				end

				local accessorySkin = {}
				accessorySkin[_accessory .. '_1'] = mAccessory
				accessorySkin[_accessory .. '_2'] = mColor
				TriggerEvent('skinchanger:loadClothes', skin, accessorySkin)
			end)
		else
			if _accessory == 'ears' then
				ESX.ShowNotification("Du hast keine Ohren Accessoires")
			elseif _accessory == 'glasses' then
				ESX.ShowNotification("Du hast keine Brille")
			elseif _accessory == 'helmet' then
				ESX.ShowNotification("Du hast kein Hut/Helm")
			elseif _accessory == 'mask' then
				ESX.ShowNotification("Du hast keine Maske")
			end
		end

	end, accessory)
end

Citizen.CreateThread(function()
	while true do
		while _menuPool:IsAnyMenuOpen() do
			Citizen.Wait(0)

			if not _menuPool:IsAnyMenuOpen() then
				mainMenu:Clear()
				itemMenu:Clear()

				_menuPool:Clear()
				_menuPool:Remove()

				kleidunganaus = {}


				collectgarbage()
			end
		end

		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

Citizen.CreateThread(function()
	mainMenu = NativeUI.CreateMenu(Config.servername, "Interaktionsmenü")

	_menuPool:Add(mainMenu)

	while true do
		if _menuPool then
			_menuPool:ProcessMenus()
		end

		plyPed = PlayerPedId()
		
		if PlayerData.job ~= nil and (PlayerData.job.name == 'unemployed' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offmechanic' or PlayerData.job.name == 'offambulance' or PlayerData.job.name == 'offbennys' or PlayerData.job.name == 'vehsale' or PlayerData.job.name == 'mafia') then
		if IsControlJustReleased(0, Config.Menu.clavier) and GetLastInputMethod(2) and not isDead then
			if mainMenu:Visible() then
				mainMenu:Visible(false)
			elseif not mainMenu:Visible() then
				ESX.PlayerData = ESX.GetPlayerData()
				GenerateKleidungAnAus()
				mainMenu:Visible(true)
			end
		end
		end

		Citizen.Wait(0)
	end
end)

function GenerateKleidungAnAus()
	_menuPool = NativeUI.CreatePool()

	mainMenu = NativeUI.CreateMenu(Config.servername, "Interaktionsmenü")
	itemMenu = NativeUI.CreateMenu(Config.servername, "Inventar: Aktion")
	weaponItemMenu = NativeUI.CreateMenu(Config.servername, "Armes: action")
	_menuPool:Add(mainMenu)
	_menuPool:Add(itemMenu)
	_menuPool:Add(weaponItemMenu)
	



	AddMenuClothesMenu0(mainMenu)
	AddMenuClothesMenu1(mainMenu)
	AddMenuAccessoryMenu0(mainMenu)
	AddMenuAccessoryMenu1(mainMenu)


	if IsPedSittingInAnyVehicle(plyPed) then
		if (GetPedInVehicleSeat(plyVehicle, -1) == plyPed) then
			AddMenuVehicleMenu(mainMenu)
		end
	end


	_menuPool:RefreshIndex()
end