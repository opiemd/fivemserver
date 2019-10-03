local animations = {
	{ dictionary = "creatures@rottweiler@amb@sleep_in_kennel@", animation = "sleep_in_kennel", name = "Sich hinlegen", },
	{ dictionary = "creatures@rottweiler@amb@world_dog_barking@idle_a", animation = "idle_a", name = "Bellen", },
	{ dictionary = "creatures@rottweiler@amb@world_dog_sitting@base", animation = "base", name = "Sitzen", },
	{ dictionary = "creatures@rottweiler@amb@world_dog_sitting@idle_a", animation = "idle_a", name = "Jucken", },
	{ dictionary = "creatures@rottweiler@indication@", animation = "indicate_high", name = "Aufmerksamkeit erregen", },
	{ dictionary = "creatures@rottweiler@melee@", animation = "dog_takedown_from_back", name = "Attacke", },
	{ dictionary = "creatures@rottweiler@melee@streamed_taunts@", animation = "taunt_02", name = "Spott", },
	{ dictionary = "creatures@rottweiler@swim@", animation = "swim", name = "Swim", },
	{ dictionary = "creatures@rottweiler@melee@base@", animation = "hit_from_left", name = "Nach-Links-springen", },
	{ dictionary = "creatures@rottweiler@tricks@", animation = "beg_enter", name = "tricks", },
	{ dictionary = "creatures@rottweiler@in_vehicle@low_car", animation = "lean_right", name = "pipi-rechts", },
	{ dictionary = "creatures@rat@amb@world_rats_eating@base", animation = "base", name = "Essen", },
	{ dictionary = "creatures@rottweiler@move", animation = "gallop_turn_l_facial", name = "idle_a", },
}

local dogModels = {
	"a_c_shepherd", "a_c_rottweiler", "a_c_husky", "a_c_poodle", "a_c_pug", "a_c_westy", "a_c_retriever"
}

local emotePlaying = false

function isDog()
	local playerModel = GetEntityModel(GetPlayerPed(-1))
	for i=1, #dogModels, 1 do
		if GetHashKey(dogModels[i]) == playerModel then
			return true
		end
	end
	return false
end

function cancelEmote()
	ClearPedTasksImmediately(GetPlayerPed(-1))
	emotePlaying = false
end

function playAnimation(dictionary, animation)
	if emotePlaying then
		cancelEmote()
	end
	RequestAnimDict(dictionary)
	while not HasAnimDictLoaded(dictionary) do
		Wait(1)
	end
	TaskPlayAnim(GetPlayerPed(-1), dictionary, animation, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
	emotePlaying = true
end

Citizen.CreateThread(function()
	WarMenu.CreateMenu('dogmenu', 'Doggo')

	while true do
		Citizen.Wait(0)
		
		if WarMenu.IsMenuOpened('dogmenu') then
			for i=1, #animations, 1 do
				if WarMenu.Button(animations[i].name) then
					playAnimation(animations[i].dictionary, animations[i].animation)
				end
			end
			if WarMenu.Button('Exit') then
				WarMenu.CloseMenu()
			end

			WarMenu.Display()
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, Config.Key2) and IsControlPressed(1, Config.Key1)   then
			
			WarMenu.OpenMenu('dogmenu')
		end		
		if emotePlaying then
            if (IsControlPressed(81, 32) or IsControlPressed(81, 33) or IsControlPressed(81, 34) or IsControlPressed(81, 35)) then
                cancelEmote()
            end
        end
	end
end)