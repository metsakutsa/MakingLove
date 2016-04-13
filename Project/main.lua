suit = require "Libraries/SUIT"
require "interface"
require "combat"
require "conf"

function love.load()
	kollane = Interface.new(0, 0, 800, 600, {255,255,0})
	sinine =  Interface.new(0, 0, 800, 600, {0,0,255})
end

function love.draw()
	suit.draw()
	kollane.draw()
	--sinine.draw()
end

function love.update( dt )
	suit.layout:reset( 200,75,10,10 )
	--mainMenu.draw()

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