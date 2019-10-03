-- [EN]
-- Do not delete or change the credits
-- Maked by Alessandro in Italy
-- [IT]
-- Non cambiare o eliminare i crediti
-- Creato da Alessandro in Italia


--------------------------------------


-- [EN]
-- Check if in blacklist
-- [IT]
-- Controlla se in blacklist

--[[ [IT]
function controlloBlacklist(indirizzoSteam)
	local risultato = MySQL.Sync.fetchScalar("SELECT identificatore FROM blacklist WHERE identificatore = @nomeUtente", {['@nomeUtente'] = indirizzoSteam})
	if risultato then
		return true
	end
	return false
end
]]


function checkBlacklist(steamIdentifier)
	local result = MySQL.Sync.fetchScalar("SELECT identifier FROM blacklist WHERE identifier = @userName", {['@userName'] = steamIdentifier})
	if result then
		return true
	else
		return false
	end
end


-- [EN]
-- This is event check and send message on player join
-- [IT]
-- Questo è l'evento che controlla e invia il messaggio quando il gicatore entra

--[[IT]
AddEventHandler("playerConnecting", function(nome, motivoKick)
	local indirizzoSteam = GetPlayerIdentifiers(source)[1]
	if controlloBlacklist(indirizzoSteam) then
		motivoKick("" ..nome.. " sei blacklistato dal server.")
		CancelEvent()
    end
end)
]]

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
	local _source = source
		    deferrals.defer()
			deferrals.update("einen Moment bitte.")
			
			deferrals.done("Es tut uns Leid, aber der Server wird gerade gewartet. Dieser Vorgang kann mehrere Stunden dauern. Bitte geduldet euch...")
end)
