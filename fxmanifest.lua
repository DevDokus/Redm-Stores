--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------

fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games {"rdr3"}

description 'Customizable General Stores for RedM'
author 'DevDokus Github'
version '1.2.0'

shared_script {'config.lua', '[Core]/[Lang]/*.lua'}
client_scripts { '[Core]/*.lua', '[Core]/[Client]/*.lua' }
server_scripts { '[Core]/*.lua', '[Core]/[Server]/*.lua' }
