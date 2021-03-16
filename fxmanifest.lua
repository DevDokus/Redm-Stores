--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------

fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games {"rdr3"}

description 'Customizable General Stores for RedM'
author 'DevDokus Github'
version '0.0.1'

client_scripts {
    'Lib/warmenu.lua',
    'Core/functions.lua',
    'Core/client.lua',
    'config.lua'
}

shared_script 'config.lua'

server_scripts {
    'config.lua',
    'Core/functions.lua',
    'Core/server.lua',
}
