suit = require "Libraries/SUIT"
local show_message = false
local slider = {value = 1, min = 0, max = 2}
local input = {text = ""}

function love.load()
	love.graphics.setBackgroundColor( 0, 0, 0 )
end

function love.draw()
	suit.draw()
end

function love.update( dt )
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )

	-- Put a button on the screen. If hit, show a message.
    if suit.Button("Hello, World!", 100,100, 300,30).hit then
        show_message = true
    end

    -- if the button was pressed at least one time, but a label below
    if show_message then
        suit.Label("How are you today?", 100,150, 300,30)
    end

    suit.Slider(slider, 100,500, 200,20)
    suit.Label(tostring(slider.value), {align="left"}, 310,500, 200,20)

    suit.Input(input, 500,100,200,30)
    suit.Label("Hello, "..input.text, {align="left"}, 500,150,200,30)

end

function love.focus( bool )
end

function love.keypressed( key, unicode )
	suit.keypressed(key)
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
end

function love.mousereleased( x, y, button )
end

function love.quit()
end

-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
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