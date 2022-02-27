fx_version 'cerulean'

game 'gta5'

client_script 'client.lua'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

shared_script 'config.lua'

files {
	'html/ui.html',
	'html/script.js',
	'html/progressbar.js',
	'html/css/*.css',
	'html/images/*.png'
}

ui_page 'html/ui.html'