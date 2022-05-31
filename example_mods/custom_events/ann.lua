function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('spacebar');
	precacheSound('Dodged');
end

function onEvent(name, value1, value2)
    if name == "ann" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
    playSound('warning');
    makeLuaSprite('image', 'Clear', 400, 140);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
    setObjectCamera('image', 'other');
    scaleLuaSprite('image', 1, 1);
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('urmom', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('') then
   
   Dodged = true;
   playSound('slash_effect', 0.7);
   setProperty('health', 100);
   characterPlayAnim('boyfriend', 'attack', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('image');
   makeLuaSprite('attacked', '-20', 0, 0);
   addLuaSprite('attacked', true);
   doTweenColor('hello', 'attacked', 'FFFFFFFF', 0.1, 'quartIn');
   setObjectCamera('attacked', 'other');
   scaleLuaSprite('attacked', 0.50, 0.50);
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'urmom' and Dodged == false then
   removeLuaSprite('image');

   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   removeLuaSprite('green', 1.5);
   
   end
end