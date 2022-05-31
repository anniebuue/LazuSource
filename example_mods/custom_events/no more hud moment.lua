function onEvent(name,value1,value2)
	if name == 'no more hud moment' then
	
		if value1 == 'on' then
						doTweenAlpha('GUItween', 'camHUD', 0, 0.5, 'linear');
		end
	
		if value2 == 'off' then
						doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
		end
	end
	end	