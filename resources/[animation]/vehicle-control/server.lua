-- E N G I N E --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/engine off" then
		CancelEvent()
		--------------
		TriggerClientEvent('engineoff', s)
	elseif message == "/engine on" then
		CancelEvent()
		--------------
		TriggerClientEvent('engineon', s)
	elseif message == "/engine" then
		CancelEvent()
		--------------
		TriggerClientEvent('engine', s)
	end
end)
-- T R U N K --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/trunk" then
		CancelEvent()
		--------------
		TriggerClientEvent('trunk', s)
	end
end)
-- Tür 1 --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/vor" then
		CancelEvent()
		--------------
		TriggerClientEvent('vor', s)
	end
end)
-- Tür 2 --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/nachbar" then
		CancelEvent()
		--------------
		TriggerClientEvent('nachbar', s)
	end
end)
-- Tür 3 --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/hinter" then
		CancelEvent()
		--------------
		TriggerClientEvent('hinter', s)
	end
end)
-- Tür 4 --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/hinrech" then
		CancelEvent()
		--------------
		TriggerClientEvent('hinrech', s)
	end
end)
-- H O O D --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/hood" then
		CancelEvent()
		--------------
		TriggerClientEvent('hood', s)
	end
end)
-- L O C K --
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/lock" then
		CancelEvent()
		--------------
		TriggerClientEvent('lock', s)
	end
end)




