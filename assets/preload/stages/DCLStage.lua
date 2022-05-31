function onCreate()
	-- background shit
	makeLuaSprite('DCLback', 'DCLback', -600, -250);
	setScrollFactor('DCLback', 0.9, 0.9);
	scaleObject('DCLback', 1, 1);

	makeLuaSprite('DCLClouds', 'DCLClouds', -650, -50);
	setScrollFactor('DCLClouds', 0.9, 0.9);
	scaleObject('DCLClouds', 1, 1);

	makeLuaSprite('DCLfront', 'DCLfront', -500, -10);
	setScrollFactor('DCLfront', 0.9, 0.9);
	scaleObject('DCLfront', 0.9, 0.9);

	makeLuaSprite('DCLStage', 'DCLStage', -300, 170);
	setScrollFactor('DCLStage', 0.9, 0.9);
	scaleObject('DCLStage', 1, 1);


	addLuaSprite('DCLback', false);
	addLuaSprite('DCLClouds', false);
	addLuaSprite('DCLfront', false);
	addLuaSprite('DCLStage', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end