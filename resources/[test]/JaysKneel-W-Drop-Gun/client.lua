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

Citizen.CreateThread(function()
while true do
Citizen.Wait(0)
if IsControlJustPressed(1, 81) then
HandsupKneel()
end
end
end)

---Coded by Jeremiah#0420
RegisterCommand("k", function(source,args,rawCommand)
    HandsupKneel()
end, false)

function playAnim(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(animDict)
end

function DisplayNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end

---HandsupKneel Code
function HandsupKneel()
    ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, true) then
        DisplayNotification("Please leave the vehicle first next time.")
        ClearPedTasksImmediately(ped)
    end
    if IsPedArmed(ped, 7) then
    dropgun("weapons@first_person@aim_rng@generic@projectile@sticky_bomb@", "plant_floor")
    Citizen.Wait(1450)
    SetPedDropsInventoryWeapon(GetPlayerPed(-1), GetSelectedPedWeapon(GetPlayerPed(-1)), 0.0, 0.6, -0.9, 30)
    end
    if DoesEntityExist(ped) then
        Citizen.CreateThread(function()
            playAnim("random@arrests@busted")
            if IsEntityPlayingAnim(ped, "random@arrests@busted", "idle_a", 3)then
                ClearPedTasksImmediately(ped)
                ResetPedMovementClipset(ped, 0.0)
			elseif not IsEntityPlayingAnim(ped, "random@arrests@busted", "idle_a", 3) then
                TaskPlayAnim(ped, "random@arrests@busted", "idle_a", 8.0, -8, -1, 49, 0, 0, 0, 0)
                TaskPlayAnim(ped, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
                RequestAnimSet( "move_ped_crouched" )
                HasAnimSetLoaded("move_ped_crouched")
                SetPedMovementClipset(ped, "move_ped_crouched", 0.25 )
			end
		end)
	end
end

---Drop gun code
function dropgun(dict, name)
    local ped = GetPlayerPed(-1)
    loadAnimDict(dict)
    TaskPlayAnim(ped, dict, name, 8.0, 1.0, -1, 2, 0, 0, 0, 0)
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
    return true
end
