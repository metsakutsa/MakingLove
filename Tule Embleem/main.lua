function love.load()
	require("gui")
	love.graphics.setBackgroundColor( 255, 255, 255 )
	gui = false
end

function love.draw()
	nupp=drawButton(300,250,200,100)
	if gui then
		drawClosableWindow(50,50,700,500)
	end	
end

function love.update(dt)
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )
end

function love.focus(bool)
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
	if CheckMouseCollision( mouseX, mouseY, buttonX, buttonY, buttonW, buttonH ) then
		gui= true
	end
	
	if CheckMouseCollision(mouseX,mouseY,closeWindowX, closeWindowY, closeWindowW,closeWindowH) then
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
function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

-- Mouse collision detection function.
-- Returns true if mouse is inside a box
-- x,y are the left-top coords of the box, while w,h are its width and height
-- mx,my are the mouse coordinates
function CheckMouseCollision(mx,my, x, y, w, h)
  return mx < x+w and
         x < mx and
         my < y+h and
         y < my
end