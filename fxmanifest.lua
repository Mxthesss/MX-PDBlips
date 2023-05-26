fx_version 'cerulean'
game 'gta5'

author 'Mxthess'

shared_script '@es_extended/imports.lua'

client_scripts {
    'config.lua',
    'mx_client.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
    'config.lua',
    'mx_server.lua'
}

exports {
    'goOnDuty',
    'goOffDuty'
}