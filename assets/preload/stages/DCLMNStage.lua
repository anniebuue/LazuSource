function onCreate()
	-- background shit
	makeLuaSprite('DCLback', 'DCLMNback', -650, -80);
	setScrollFactor('DCLback', 0.9, 0.9);
	scaleObject('DCLback', 1, 1);

	makeLuaSprite('DCLStage', 'DCLMNStage', -710, 420);
	setScrollFactor('DCLStage', 0.9, 0.9);
	scaleObject('DCLStage', 1, 1);

	makeAnimatedLuaSprite('DCLCrowd','DCLCrowd',-400, 500)addAnimationByPrefix('DCLCrowd','dance','CrowdBop',24,true)
	objectPlayAnimation('DCLCrowd','dance',false)
	setScrollFactor('DCLCrowd', 0.9, 0.9);
	scaleObject('DCLCrowd', 0.7, 0.7);

	addLuaSprite('DCLback', false);
	addLuaSprite('DCLStage', false);
	addLuaSprite('DCLCrowd', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end