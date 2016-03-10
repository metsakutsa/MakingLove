suit = require "Libraries/SUIT"
require "menu"
require "button"
require "states"
require "tile"


function love.load()

end

function love.draw()
    dirt.draw(100,100)
	suit.draw()
end

function love.update( dt )
	suit.layout:reset(100,100,10,10)
    
end

function love.focus( bool )
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function  love.mousepressed( x, y, button, istouch )
end


-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
end