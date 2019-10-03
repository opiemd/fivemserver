--- CONFIGURATION ---

--- PLAYER
-- maximum allowed walking / sprinting speed (set to 0.0 to disable)
local checkSpeed = 8.5
-- check if player is invincible
local checkGodmode = true
-- check regeneration multiplier
local checkRegenMultiplier = true
-- force regeneration multiplier
local forceRegenMultiplier = 1.0
-- force max health (0 to disable | default: 200)
local forceMaxHealth = 200
-- check for health setter
local checkHealthSetter = true
-- check if player is invisible
local checkInvisible = true
-- kill detection: detect when someone killed alot of players (can not undo it, but send a sorry to affected players), more configurations in server.lua
local checkKill = true
-- check if player teleported / used no-clip
local checkTeleport = true

--- VEHICLE
-- check torque multiplier
local checkTorqueMultiplier = true
-- force torque multiplier to
local forceTorqueMultiplier = 1.0
-- check power multiplier
local checkPowerMultiplier = true
--- force power multiplier
local forcePowerMultiplier = 1.0
-- check light multiplier
local checkLightMultiplier = true
-- force light multiplier
local forceLightMultiplier = 1.0
-- check lod multiplier
local checkLodMultiplier = true
-- force lod multiplier
local forceLodMultiplier = 1.0
-- un-/freeze vehicle
local forceFreezeVehicle = "1" -- "0" = disable | "1" = force unfreeze | "2" = force freeze
-- prevent train creation (deletes all trains)
local checkTrain = true

--- WEAPON
-- remove all weapons from player
local deleteWeapons = false
-- force unlimited ammonation
local forceUnlimitedAmmo = "1" -- "0" = disable | "1" = force limited | "2" = force unlimited

--- CONFIGURATION ---

local resources = 0
local commands = 0
local playercoords = GetEntityCoords(GetPlayerPed(-1))
local died = false
local lastTimerChack = 0
local health = 0

Citizen.CreateThread(function()
	while true do
		if(not forceUnlimitedAmmo == "0") then
			if(forceUnlimitedAmmo == "2") then
				SetPedInfiniteAmmoClip(GetPlayerPed(-1), 0)
			else
				SetPedInfiniteAmmoClip(GetPlayerPed(-1), 1)
			end
		end

		if(checkTrain) then
			DeleteAllTrains()
		end

		if(checkHealthSetter) then
			SetEntityHealth(GetPlayerPed(-1), GetEntityHealth(GetPlayerPed(-1)) - 5)
			health = GetEntityHealth(GetPlayerPed(-1))
			Wait(50)
			if(GetEntityHealth(GetPlayerPed(-1)) > health) then
				TriggerServerEvent("anticheatkick", "god")
			end
			SetEntityHealth(GetPlayerPed(-1), GetEntityHealth(GetPlayerPed(-1)) + 5)
		end

		if(checkTeleport) then
			if(playercoords.x > 0 and playercoords.y > 0) then
				newplayercoords = GetEntityCoords(GetPlayerPed(-1))
				if(died) then
					playercoords = newplayercoords
					died = false
				else
					if(not IsPedInAnyVehicle(GetPlayerPed(-1), 0) and not IsPedOnVehicle(GetPlayerPed(-1)) and not IsPlayerRidingTrain(PlayerId())) then
						if(checkSpeed > 0) then
							if(GetDistanceBetweenCoords(playercoords.x, playercoords.y, playercoords.z, newplayercoords.x, newplayercoords.y, newplayercoords.z, 0) > checkSpeed * 4) then
								TriggerServerEvent("anticheatkick", "tp")
							end
						else
							if(GetDistanceBetweenCoords(playercoords.x, playercoords.y, playercoords.z, newplayercoords.x, newplayercoords.y, newplayercoords.z, 0) > 30.0) then
								TriggerServerEvent("anticheatkick", "tp")
							end
						end
					end
					playercoords = newplayercoords
				end
			end
		end

		if(deleteWeapons) then
			RemoveAllPedWeapons(GetPlayerPed(-1), 1)
		end

		if(checkGodmode) then
			if(GetPlayerInvincible(PlayerId())) then
				TriggerServerEvent("anticheatkick", "god")
			end
		end

		if(checkRegenMultiplier) then
			SetPlayerHealthRechargeMultiplier(PlayerId(), forceRegenMultiplier)
		end

		if(forceMaxHealth > 0) then
			SetEntityMaxHealth(GetPlayerPed(-1), forceMaxHealth)
		end

		if(checkInvisible) then
			if(not IsEntityVisible(GetPlayerPed(-1))) then
				TriggerServerEvent("anticheatkick", "visible")
			end
		end

		if(not resources == 0 and not GetNumResources() == resources) then
			TriggerServerEvent("anticheatkick", "resources")
		elseif(not commands == 0 and not #GetRegisteredCommands() == commands) then
			TriggerServerEvent("anticheatkick", "commands")
		end
		
		if(not IsPedInAnyVehicle(GetPlayerPed(-1), 1) and not checkSpeed == 0.0) then
            if(GetEntitySpeed(GetPlayerPed(-1)) > checkSpeed) then
                if(not IsPedFalling(GetPlayerPed(-1))) then
                    TriggerServerEvent("anticheatkick", "speedhack")
                end
            end
        else
			if(GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1)), -1) == GetPlayerPed(-1)) then
				if(checkLodMultiplier) then
					SetVehicleLodMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), 0), forceLodMultiplier)
				end
				if(checkLightMultiplier) then
					SetVehicleLightMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), 0), forceLightMultiplier)
				end
				if(checkPowerMultiplier) then
					SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), 0), forcePowerMultiplier)
				end
				if(checkTorqueMultiplier) then
					SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), 0), forceTorqueMultiplier)
				end
				if(forceFreezeVehicle == "1") then
					FreezeEntityPosition(GetVehiclePedIsIn(GetPlayerPed(-1)), 0)
				elseif(forceFreezeVehicle == "2") then
					FreezeEntityPosition(GetVehiclePedIsIn(GetPlayerPed(-1)), 1)
				end
            end
		end
		
		if(checkKill) then
			if(IsEntityDead(GetPlayerPed(-1))) then
				TriggerServerEvent("deadcheat")
				died = true
			end
		end
		Wait(4000)
	end
end)

RegisterNetEvent("hereyourDATAcheat")
AddEventHandler("hereyourDATAcheat", function(res, com)
	resources = res
	commands = com
end)

RegisterNetEvent("gameTimerChack")
AddEventHandler("gameTimerChack", function()
	if(lastTimerChack == 0) then
		lastTimerChack = GetGameTimer()
	else
		if(lastTimerChack - GetGameTimer > 31000 or lastTimerChack - GetGameTimer < 30000) then
			TriggerServerEvent("anticheatkick", "gametimer")
		end
		lastTimerChack = GetGameTimer()
	end
end)