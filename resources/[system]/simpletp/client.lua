key_to_teleport = 38

positions = {
    {{136.09, -762.18, 44.23, 0}, {136.09, -762.05, 240.8, 158}, "FIB Teleport"}, -- Outside the Sheriff's Station
    --{{464.58, -990.03, 23.7, 0}, {437.25, -990.86, -12.1, 0}, "Befragungsraum Teleport"},
    --{{1860.72, 3661.49, 33.00, 0}, {1118.02, -3193.86, -40.39, 0}, "Geld Teleport"},
    --{{1850.72, 3661.49, 33.00, 0}, {1064.02, -3182.86, -39.39, 0}, "Hanf Teleport"},
	{{-1680.4, -291.88, 50.89, 204.19}, {-1946.07, -12.58, 90.70, 271.36}, "LS Kirche Teleport"},
    --{{924.8, 46.5, 80.12, 0}, {1089.70, 207.00, -49.9, 358},{36,237,157}, "[E] Cassino Diamond"},
    --{{1086.00, 215.0, -50.00, 312}, {980.00, 57.0, 115.3, 52},{255, 157, 0}, "[E] Penthouse"},
    --{{969.58, 63.21, 111.56, 226.08}, {968.03, 63.49, 111.57, 51},{255, 157, 0}, "[E] Tarasse"},
    {{1242.92, -3113.83, 5.03, 0}, {1088.89, -3188.49, -39.99, 171.34}, "Kokain Verarbeiter" },
	{{238.12, -412.4, 47.11, 344.4}, {236.29, -400.34, -85.93, 94.99}, "Gerichtsgebäude" },
}

-----------------------------------------------------------------------------
-------------------------DO NOT EDIT BELOW THIS LINE-------------------------
-----------------------------------------------------------------------------

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for _,location in ipairs(positions) do
            teleport_text = location[4]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }
            Red = location[3][1]
            Green = location[3][2]
            Blue = location[3][3]

            DrawMarker(27, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 200, 0, 0, 0, 0)
            DrawMarker(27, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 200, 0, 0, 0, 0)

            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end