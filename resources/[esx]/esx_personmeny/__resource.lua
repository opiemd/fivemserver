resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Bürgerinteraktionen 1.0'

client_scripts {
	'client.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'config.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'config.lua'
}
