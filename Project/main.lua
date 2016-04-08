suit = require "Libraries/SUIT"
require "menu"
require "combat"
require "conf"

function love.load()
	
end

function love.draw()
	suit.draw()
end

function love.update( dt )
	suit.layout:reset( 200,75,10,10 )
	mainMenu.draw()
end

function love.focus( bool )
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function love.quit()
end

-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
end