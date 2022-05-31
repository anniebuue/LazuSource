function onCreate()
	-- triggered when the lua file is started

	makeAnimatedLuaSprite('theboys', 'characters/DCLCrowd', -1200, 400);
	addAnimationByPrefix('theboys', 'first', 'CrowdBop', 24, true);
	objectPlayAnimation('theboys', 'first');
	addLuaSprite('theboys', true); -- false = add behind characters, true = add over characters
	scaleObject('theboys', 1.2, 1.2);
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('theboys', 'first');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('theboys', 'first');
	end
end