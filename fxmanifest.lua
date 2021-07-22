-- FXVersion Version
fx_version 'cerulean'
games { 'gta5' }

-- Client Scripts
client_scripts {
    'client/main.lua',
    'client/playRandomSound.lua'
}

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page "client/html/index.html"

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files {
    'client/html/index.html',

    -- Begin Sound Files Here...
    'client/html/sounds/fart-01.ogg',
    'client/html/sounds/fart-04.ogg',
    'client/html/sounds/fart-05.ogg',
    'client/html/sounds/fart-06.ogg',
    'client/html/sounds/fart-07.ogg',
    'client/html/sounds/fart-squeak-01.ogg'
}
