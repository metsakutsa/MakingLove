local suit = require "Libraries/SUIT"
require "conf"
require "states"
require "mainMenu"
require "Scenes/Tutorial/tutorial"
require "fileReader"

--Any initially loaded things go here
function love.load()
	drawState = init
	
	--Make text font nice
	font = love.graphics.newFont(14)
	love.graphics.setFont(font)
	
	--Get window size
	winWidth, winHeight = love.graphics.getDimensions()
	
end

function love.draw()
	drawState()
	suit.draw()
end

function love.update( dt )	
	--PRINTS STATE CHANGE INFORMATION IN THE CONSOLE
	fsm.onstatechange = function(self, event, from, to) print("Entering " .. fsm.current .. " state") end
	
end

function love.focus( bool )
end

function love.keypressed( key, unicode )

end

function love.keyreleased( key, unicode )
	if drawState == init then
		fsm:MainMenu()
	end
end

function love.quit()
end

-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
end

function init()
	suit.layout:reset((winWidth-200)/2,(winHeight-100)/2,0,0)
	suit.Label("Press any button to start", suit.layout:row(200,100))
end

