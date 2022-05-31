function onCreate()
	-- background shit
	makeLuaSprite('DCLback', 'DCLSNback', -700, -50);
	setScrollFactor('DCLback', 0.9, 0.9);
	scaleObject('DCLback', 1, 1);

	makeLuaSprite('DCLStage', 'DCLSNStage', -710, 420);
	setScrollFactor('DCLStage', 0.9, 0.9);
	scaleObject('DCLStage', 1, 1);

	addLuaSprite('DCLback', false);
	addLuaSprite('DCLStage', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end