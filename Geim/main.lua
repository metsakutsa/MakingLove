function love.load()
	love.graphics.setBackgroundColor( 255, 255, 255 )
	print("Hello, LOVE!")
end

function love.draw()
	
	love.mouse.setVisible(false)
	local x = love.mouse.getX()
	local y = love.mouse.getY()
	
	love.graphics.setColor(255,0,0)
	love.graphics.circle("fill", x, y, 8, 8)
	
	love.graphics.setColor(230,255,128)
	love.graphics.rectangle( "fill", 0, 500, 800, 100 )
	love.graphics.setColor(0,0,0)
	love.graphics.print( "Hello, my love", 32, 532, 0, 1, 1 )
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
	print("Bye bye, boy")
end