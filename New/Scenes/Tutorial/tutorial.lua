suit = require "Libraries/SUIT"
require "states"
require "fileReader"

local tLines = readLines("Scenes/Tutorial/tutorial_dialogue.txt")
local jorss = love.graphics.newImage("Scenes/Tutorial/Resources/jorss.png")
local border = 5	--Border thickness

function drawTutorial()
	--Draw image
	love.graphics.draw(jorss, 50, winHeight/10 )
	
	--Draw the textbox
	suit.layout:reset( border, winHeight - winHeight/4 + border, 0, 0 )
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", border, winHeight - winHeight/4 + border, winWidth - border*2, winHeight/4 - border*2)
	
	--Make text
	suit.layout:reset( border + 10, winHeight - winHeight/4 + border, 0, 0 )
	suit.Label(tLines[currentLine], suit.layout:row(winWidth-border*2 - 20, winHeight/4 - 60))
	
	--Make next and prev and skip button
	suit.layout:reset( winWidth - 300, winHeight - border - 50, 10, 0 )
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


