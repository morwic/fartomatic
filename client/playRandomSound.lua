-- Custom license
--
-- Copyright (c) 2021 Philipp Decker
-- 
-- By acquiring this lua file for the "FiveM" modification for "Grand Theft Auto V" you are granted 
-- permission to use and modify all of its parts. However you are not allowed to publish and/or 
-- distribute this file, copies of this file and/or modifications of this file.
-- 
-- This lua file is provided "as is" and the copyright holder of this software can not be held 
-- accountable for any damages occuring during the installation process, usage or modification of 
-- this file.

-- Requirements
-- [InteractSound](https://forum.cfx.re/t/release-play-custom-sounds-for-interactions/8282)

-- Features
-- Makes a player able to play random sounds from a list using a button.


-- list of all sounds
local sounds = {
	"fart-01",
	"fart-04",
	"fart-05",
	"fart-06",
	"fart-07",
	"fart-squeak-01"
}

-- sound distance in meters
local maxDistance = 15.0

-- volume from 0.1 to 1.0
local volume = 1.0

-- button for the sound
local button = 344

Citizen.CreateThread(function()
	while (true) do
		Citizen.Wait(0)

		if (IsControlJustPressed(0, button)) then
			local index = math.random(1, #sounds)
			TriggerServerEvent("InteractSound_SV:PlayWithinDistance", maxDistance, sounds[index], volume)
		end
	end
end)
