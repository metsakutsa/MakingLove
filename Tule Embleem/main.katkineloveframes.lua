function love.load()
	love.graphics.setBackgroundColor( 255, 255, 255 )
	loveframes = require("Libraries/LoveFrames")
end

function love.draw()
	local button = loveframes.Create("button")
	button:SetPos(10, 10)

	--FOR LOVEFRAMES, KEEP ON BOTTOM
	--loveframes.draw()
end

function love.update( dt )
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )

	--FOR LOVEFRAMES, KEEP ON BOTTOM
	loveframes.update(dt)
end

function love.focus( bool )
end

function love.keypressed( key, unicode )



	--FOR LOVEFRAMES, KEEP ON BOTTOM
	loveframes.keypressed(key, unicode)
end

function love.keyreleased( key, unicode )

	--FOR LOVEFRAMES, KEEP ON BOTTOM
	loveframes.keyreleased(key)
end

function love.mousepressed( x, y, button )

	--FOR LOVEFRAMES, KEEP ON BOTTOM
	loveframes.mousepressed(x, y, button)
end

function love.mousereleased( x, y, button )


	--FOR LOVEFRAMES, KEEP ON BOTTOM
	loveframes.mousereleased(x, y, button)
end

function love.quit()
end

--FOR LOVEFRAMES
function love.textinput(text)

	-- your code

	loveframes.textinput(text)
end





-- Collision detection function.
-- Returns true if two boxes overlap, false if they don't
-- x1,y1 are the left-top coords of the first box, while w1,h1 are its width and height
-- x2,y2,w2 & h2 are the same, but for the second box
function CheckCollision( x1, y1, w1, h1, x2, y2, w2, h2 )
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

-- Mouse collision detection function.
-- Returns true if mouse is inside a box
-- x,y are the left-top coords of the box, while w,h are its width and height
-- mx,my are the mouse coordinates
function CheckMouseCollision( mx, my, x, y, w, h )
  return mx < x+w and
         x < mx and
         my < y+h and
         y < my
end