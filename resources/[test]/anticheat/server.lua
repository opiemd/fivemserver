--- CONFIGURATION ---

-- register some fake events (set to "" to disable)
local eventname1 = "addAce"
local eventname2 = "giveAce"
local eventname3 = "givePerm"

-- discord webhook (set to "" to disable)
local webhookurl = ""

-- Check if command- and resource-count is correct
local checkComsEveRes = true

-- kill detection (only if enabled in client.lua)
local minKills = 5 -- minimal kills to send a sorry

-- detect a manipulated game timer
local gameTimer = true

--- CONFIGURATION ---

RegisterServerEvent("anticheatkick")
AddEventHandler("anticheatkick", function(reson)
	TriggerClientEvent("chatMessage", -1, "AppleCheat", {180, 0, 0}, GetPlayerName(source) .. " has been kicked.")
	PerformHttpRequest(webhookurl, function(err, text, headers) end, 'POST', json.encode({username = "AppleCheat", content = GetPlayerName(source) .. " [" .. source .. "] has been kicked."}), { ['Content-Type'] = 'application/json' })
	if(reson == "resources") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his resources were manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()		
		DropPlayer(source, "AppleCheat: Your resources seem to be manipulated!")
	elseif(reson == "commands") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his commands were manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Your commands seem to be manipulated!")
	elseif(reson == "god") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because of using god-mode. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Seems like your using god-mode!")
	elseif(reson == "tp") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because of teleportation or No-Clipping. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Seems like you teleported!")
	elseif(reson == "gametimer") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his game-time was manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Seems like your game-time was manipulated!")
	elseif(reson == "speedhack") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his speed was manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Your speed seem to be manipulated!")
	elseif(reson == "events") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his events were manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Your events seem to be manipulated!")
	elseif(reson == "handling") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because his handling was manipulated. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: Your handling seem to be manipulated!")
	elseif(reson == "visible") then
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because he was invisible. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: You seem to be invisible!")
	else
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()
		DropPlayer(source, "AppleCheat: You have been kicked, the reason is unknown yet.")
	end
end)

deadplayers = {}
Citizen.CreateThread(function()
	while true do
		if(checkComsEveRes) then
			TriggerClientEvent("hereyourDATAcheat", -1, GetNumResources(), #GetRegisteredCommands())
		end
		if(gameTimer) then
			TriggerClientEvent("gameTimerChack", -1)
		end
		if(#deadplayers > 0) then
			if(#deadplayers >= minKills) then
				for pID in pairs(deadplayers) do
					TriggerClientEvent("chatMessage", deadplayers[pID], "AppleCheat", {180, 0, 0}, "This did not go as planned. Sorry!")
				end
			end
		end
		while(#deadplayers > 0) do
			table.remove(deadplayers, 1)
		end
		Wait(30000)
	end
end)

RegisterServerEvent("deadcheat")
AddEventHandler("deadcheat", function()
	table.insert(deadplayers, source)
end)

if(not eventname1 == "") then
	RegisterServerEvent(eventname)
	AddEventHandler(eventname, function()
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because he triggered the wrong event. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()		
		DropPlayer(source, "AppleCheat: You triggered the wrong event!")
	end)
end
if(not eventname2 == "") then
	RegisterServerEvent(eventname)
	AddEventHandler(eventname, function()
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because he triggered the wrong event. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()		
		DropPlayer(source, "AppleCheat: You triggered the wrong event!")
	end)
end
if(not eventname3 == "") then
	RegisterServerEvent(eventname)
	AddEventHandler(eventname, function()
		print()
		print(GetPlayerName(source) .. " [" .. source .. "] has been kicked, because he triggered the wrong event. Identifiers:")
		for id in pairs(GetPlayerIdentifiers(source)) do
			print(GetPlayerIdentifiers(source)[id])
		end
		print()		
		DropPlayer(source, "AppleCheat: You triggered the wrong event!")
	end)
end