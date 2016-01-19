function love.load()
	require("entities")
	require("explosion")
	ents.Startup()
	love.graphics.setBackgroundColor( 255, 255, 255 )
	xCloud = 0
	imageCloud = love.graphics.newImage("textures/cloud.png")
	imageGround = love.graphics.newImage( "textures/ground.png" )
	imageEnemy_1 = love.graphics.newImage( "textures/enemy1.png" )
	imageEnemy_2 = love.graphics.newImage( "textures/enemy2.png" )
	
	for i = 1, 2 do
		ents.Create( "zepp", -math.random(128,256), 128 )
	end

end

function love.draw()
	local x = love.mouse.getX( )
	local y = love.mouse.getY( )
	
	love.graphics.setColor( 198, 241, 255, 255 )
	love.graphics.rectangle( "fill", 0, 0, 800, 300 )
	
	love.graphics.setColor( 255, 255, 255, 255 )
	love.graphics.draw( imageCloud, xCloud - 256, 128, 0, 1, 1, 0, 0 )
	
	love.graphics.setColor( 103, 164, 21, 255 )
	love.graphics.rectangle( "fill", 0, 300, 800, 300 )
	
	love.graphics.setColor( 255, 255, 255, 255 )
	love.graphics.draw( imageGround, (800-1024)/2, 300-64, 0, 1, 1, 0, 0 )
	
	ents:draw()
end

function love.update(dt)
	xCloud = xCloud + 32*dt
	if xCloud >= (800 + 256) then
		xCloud = 0
	end
	ents:update(dt)
end

function love.focus(bool)
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
	
end

function love.mousepressed( x, y, button )

	if button == 1 then
		ents.shoot( x, y )
	end
end

function love.mousereleased( x, y, button )
end

function love.quit()
end

function insideBox( px, py, x, y, wx, wy )
	if px > x and px < x + wx then
		if py > y and py < y + wy then
			return true
		end
	end
	return false
end