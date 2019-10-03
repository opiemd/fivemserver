description 'esx_heroin'

version '1.0.0'

server_scripts {

  '@es_extended/locale.lua',
	'locales/fr.lua',
  'server/esx_heroin_sv.lua',
  'config.lua'

}

client_scripts {

  '@es_extended/locale.lua',
	'locales/fr.lua',
  'config.lua',
  'client/esx_heroin_cl.lua'

}
