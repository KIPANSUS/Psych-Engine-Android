function onCreate()
	--background boi
	makeLuaSprite('sky', 'sky', -414, -440.8)
	setLuaSpriteScrollFactor('sky', 1, 1)
	addLuaSprite('sky', false)

	makeLuaSprite( 'backtrees', 'backtrees', -290.55, -298.3)
	setLuaSpriteScrollFactor('backtrees', 1.1, 1)
	addLuaSprite('backtrees', false)

	makeLuaSprite( 'trees', 'trees', -306, -334.65)
	setLuaSpriteScrollFactor('trees', 1.2, 1)
	addLuaSprite('trees', false)

	makeLuaSprite( 'ground', 'ground', -309.95, -240.2)
	setLuaSpriteScrollFactor('ground', 1.3, 1)
	addLuaSprite('ground', false)
	
	makeLuaSprite( 'greenhill', 'GreenHill', -428.5, -449.35)
	setLuaSpriteScrollFactor('greenhill', 1, 1)
	addLuaSprite('greenhill', false)

	setProperty('sky.visible', false)
	setProperty('backtrees.visible', false)
	setProperty('trees.visible', false)
    setProperty('ground.visible', false)
	setProperty('greenhill.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '1' then
			setProperty('sky.visible', true)
	        setProperty('backtrees.visible', true)
	        setProperty('trees.visible', true)
            setProperty('ground.visible', true)
            setProperty('greenhill.visible', false)
		end

		if value1 == '2' then
			setProperty('sky.visible', false)
	        setProperty('backtrees.visible', false)
	        setProperty('trees.visible', false)
            setProperty('ground.visible', false)
            setProperty('greenhill.visible', true)
		end
	end
end