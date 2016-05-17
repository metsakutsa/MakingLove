suit = require "Libraries/SUIT"
require "states"
require "fileReader"

local tLines = readLines("Scenes/tutorial_dialogue.lua")

function drawTutorial()
	suit.layout:reset( 0, 0, 0, 0 )
	
	--And textbox itself
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", 5, 405, 790, 190)
	
	--Make text
	suit.layout:reset( 100, 425, 0, 0 )
	suit.Label(tLines[currentLine], suit.layout:row(600, 100))
	
	--Make next and prev and skip button
	suit.layout:reset( 510, 550, 10, 0 )
	if suit.Button("Previous", suit.layout:col(80,30)).hit then
		if tLines[currentLine - 1] ~= nil then
			currentLine = currentLine - 1
		end
	end
	
	if suit.Button("Skip", suit.layout:col()).hit then
		
	end
	
	if suit.Button("Next", suit.layout:col()).hit then
		if tLines[currentLine + 1] ~= nil then
			currentLine = currentLine + 1
		end
	end
end

--Tutorial callbacks for the state machine
fsm.onTutorial = function(self, event, from, to) drawState = drawTutorial end


