function onEvent(name, value1)
    if name == 'AWESOME BARS' then
    makeLuaSprite('bartop','',-550,-120);
	makeGraphic('bartop',1280,100,'000000');
	addLuaSprite('bartop',true);
    scaleObject('bartop', 2, 2);

	makeLuaSprite('barbot','',-550,620);
	makeGraphic('barbot',1280,100,'000000');
	addLuaSprite('barbot',true);
	setScrollFactor('bartop',0,0);
	setScrollFactor('barbot',0,0);
    scaleObject('barbot', 2, 2);
        runTimer('wait', value1);
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
                doTweenAlpha('byebye', 'barbot', 0, 1, 'sineInOut')
                doTweenAlpha('byebyetop', 'bartop', 0, 1, 'sineInOut')
            end
        end
        
        function onTweenCompleted(tag)
                if tag == 'byebye' then
                removeLuaSprite('barbot', true)
                else
                 if tag == 'byebyetop' then
                 removeLuaSprite('bartop', true)
                end
            end
        end
    end
end