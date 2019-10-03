-- https://wiki.fivem.net/wiki/Resource_manifest

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'An series of scripts'

version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/sv.lua',
	'config.lua',
	'server/sodamachine-server.lua',
	'server/vehiclelock-server.lua',
	'server/afkkick-server.lua',
	'server/enginetoggle-server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/sv.lua',
	'config.lua',
	'client/cl_seatseater.lua',
	'client/sodamachine-client.lua',
	'client/vehiclelock-client.lua',
	'client/fixtraffic-client.lua',
	'client/enginetoggle-client.lua',
	'client/npc_drop-client.lua',
	'client/pointfinger-client.lua',
	'client/speed_limit-client.lua',
	'client/afkkick-client.lua',
	'client/handsup-client.lua',
	'client/no_vehicle_rewards-client.lua',
	'client/no_crosshair-client.lua',
	'client/drift_mode-client.lua',
	'client/friendly_npc-client.lua'
}
