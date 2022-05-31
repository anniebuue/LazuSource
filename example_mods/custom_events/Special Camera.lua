function onEvent(name,v1,v2)
    local y = 100
    local t = 0
    -- stolen from bbpanzu lol -Uhard
    local u = false;
    local r = 0;
    local shot = false;
    local agent = 1
    local health = 0;
    local xx = 420.95;
    local yy = 450;
    local xx2 = 732.9;
    local yy2 = 450;
    local xx3 = 400; -- Same code as above, but for girlfriend left, right
    local yy3 = 500; -- Same code as above, but for girlfriend, up, down
    local ofs = 45;
    local followchars = true;
    local del = 0;
    local del2 = 0;
    local drain = 0.01 -- the funne
    local allowCountdown = false
    if name == 'Special Camera' then
        if v1 == on then
	        if followchars == true then
                if mustHitSection == false then
                    --setProperty('defaultCamZoom',0.7)
                    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx-ofs,yy)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx+ofs,yy)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx,yy-ofs)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx,yy+ofs)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',xx-ofs,yy)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',xx+ofs,yy)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy-ofs)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy+ofs)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy)
                    end
                    if getProperty('dad.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx,yy)
                    end
                if gfSection == true then -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                        if getProperty('gf.animation.curAnim.name') == 'singLEFT' then -- Credits to Serebeat and company for their Slaybells mod,
                            triggerEvent('Camera Follow Pos',xx3-ofs,yy3)              -- That's where I got the gf code from.
                        end
                        if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                            triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'singUP' then
                            triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                            triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                            triggerEvent('Camera Follow Pos',xx3,yy3)
				        end
                        if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                            triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                            triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                            triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                        end
                        if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                            triggerEvent('Camera Follow Pos',xx3,yy3)
                        end
                    end
                else

                    --setProperty('defaultCamZoom',0.7)
                    if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                    end
                    if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                    end
                    if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                    end
                    if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                    end
                    if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                    end
                    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                    end
                end
            else
                triggerEvent('Camera Follow Pos','','')
            end
        end
    end
            if v2 == off then
               local followchars = false
            end
        end