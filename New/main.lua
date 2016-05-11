local suit = require "Libraries/SUIT"
require "conf"
require "states"
require "mainMenu"

--Any initially loaded things go here
function love.load()
	drawState = init
end

--This is called after the update function, basically used only to draw the SUIT library, do not call SUIT functions here
function love.draw()
	suit.draw()
end

--Update SUIT functions here as well as all other updates
function love.update( dt )
	
	drawState()
	
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

function init()
	suit.layout:reset(300,250,0,0)
	suit.Label("Press any button to start", suit.layout:row(200,100))
	if love.keypressed(any) then
		fsm:MainMenu()
	end
	
end