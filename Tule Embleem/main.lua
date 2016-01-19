function love.load()
	require("gui")
	love.graphics.setBackgroundColor( 255, 255, 255 )
	gui = false

	newGameButton = drawButton( 250, 100, 300, 100 )
	settingsButton = drawButton( 250, 250, 300, 100 )
	exitButton = drawButton( 250, 400, 300, 100 )
end

function love.draw()

end

function love.update( dt )
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )
end

function love.focus( bool )
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
	newGameButton()
	if CheckMouseCollision( mouseX, mouseY, windowButton.x, windowButton.y, windowButton.w, windowButton.h ) then
		gui= true
	end
	
	if CheckMouseCollision( mouseX,mouseY, closeWindowButton.x, closeWindowButton.y, closeWindowButton.w, closeWindowButton.h ) then
		gui = false
	end
end

function love.mousereleased( x, y, button )
end

function love.quit()
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