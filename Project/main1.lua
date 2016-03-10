suit = require "Libraries/SUIT"
require "menu"


buttons = {}
gameStates = {["Main menu"] = drawMainMenu, ["New game"] = drawNewGameMenu, ["Load game"] = drawLoadGameMenu, 
["Configuration"] = drawConfigMenu, ["Quit"] = love.event.quit, ["Audio"] = drawAudioMenu, ["Video"] = drawVideoMenu}

function love.load()
	currentState = "Main menu"
end

function love.draw()
	suit.draw()
end

function love.update( dt )
	buttonHit()

	if gameStates[currentState] then
		gameStates[currentState]()
	else
		error("Invalid gamestate", 0)
	end
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

function buttonHit()
	for i, v in ipairs (buttons) do
		if v.hit then
			if v.id then
				currentState = v.id
				v.hit = false
			end
		end
	end
end
