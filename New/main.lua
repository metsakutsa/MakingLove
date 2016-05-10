suit = require "Libraries/SUIT"
require "conf"
require "interface"
local machine = require('statemachine')

local fsm = machine.create({
	initial = 'green',
	events = {
	{ name = 'red',  from = 'green',  to = 'red' },
	{ name = 'green', from = 'red', to = 'green'    }
	},
	callbacks = {
	ongreen =  function(self, event, from, to) bgColor = {0,255,0} end,
	onred =    function(self, event, from, to) bgColor = {255,0,0} end,
}})

function love.load()
	print("Entering " .. fsm.current .. " state")
	bgColor = {0,255,0}
end

function love.draw()
	suit.draw()
	love.graphics.setBackgroundColor(bgColor)
end

function love.update( dt )
	suit.layout:reset(0,0,120,10)
	if suit.Button("RED", suit.layout:col(200,100)).hit then
		fsm:red()
	end
	
	if suit.Button("GREEN", suit.layout:col(200,100)).hit then
		fsm:green()
	end
	
	--PRINTS STATE CHANGE INFORMATION IN THE CONSOLE
	fsm.onstatechange = function(self, event, from, to) print("Entering " .. fsm.current .. " state") end
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