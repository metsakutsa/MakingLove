function love.load()
	love.graphics.setBackgroundColor( 255, 255, 255 )
end

function love.draw()
	local x = love.mouse.getX( )
	local y = love.mouse.getY( )
	
	love.graphics.setColor( 198, 241, 255, 255 )
	love.graphics.rectangle( "fill", 0, 0, 800, 300 )
end

function love.update(dt)
end

function love.focus(bool)
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
	
end

function love.mousepressed( x, y, button )
end

function love.mousereleased( x, y, button )
end

function love.quit()
end