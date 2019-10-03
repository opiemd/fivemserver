Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_CARBINERIFLE'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_PISTOL'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_PUMPSHOTGUN'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_SPECIALCARBINE'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_SMG'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_SNSPISTOL'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_VEHICLE_WEAPON_SMG'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_GolfClub'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_GRENADE'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_KNUCKLE'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_SMG_MK2'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_MINISMG'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_AMMO_FIREWORK'))
		RemoveAllPickupsOfType(GetHashKey('PICKUP_WEAPON_HEAVYSNIPER'))
	end
end)


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    -- List of pickup hashes (https://pastebin.com/8EuSv2r1)
    RemoveAllPickupsOfType(0xDF711959) -- carbine rifle
    RemoveAllPickupsOfType(0xF9AFB48F) -- pistol
    RemoveAllPickupsOfType(0xA9355DCD) -- pumpshotgun
  end
end)