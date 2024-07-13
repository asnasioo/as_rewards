fx_version 'cerulean'
game 'gta5'

author 'asnasioo'
description 'Skrypt na nagrode pozdro'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
    '@es_extended/locale.lua',
    'server.lua',
	'config.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'client.lua',
	'config.lua'
}