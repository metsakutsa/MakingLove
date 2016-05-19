suit = require "Libraries/SUIT"
require "states"
require "fileReader"

local tLines = readLines("Scenes/Tutorial/tutorial_dialogue.txt")
local jorss = love.graphics.newImage("Scenes/Tutorial/Resources/jorss.jpg")
local border = 5	--Border thickness

--Create new SUIT instance because otherwise something bad happens...
 tutorialSuit = suit.new()


function drawTutorial()
	--Draw image
	love.graphics.draw(jorss, 50, winHeight/10 )
	
	--Draw the textbox
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", border, winHeight - winHeight/4 + border, winWidth - border*2, winHeight/4 - border*2)
	
	--Make text
	suit.layout:reset( border + 10, winHeight - winHeight/4 + border, 0, 0 )
	suit.Label(tLines[currentLine], suit.layout:row(winWidth-border*2 - 20, winHeight/4 - 60))
	
	--Make next and prev and skip button
	tutorialSuit.layout:reset( winWidth - 300, winHeight - border - 50, 10, 0 )
	if tutorialSuit:Button("Previous", tutorialSuit.layout:col(80,30)).hit then
		if tLines[currentLine - 1] ~= nil then
			currentLine = currentLine - 1
		end
	end
	
	if tutorialSuit:Button("Skip", tutorialSuit.layout:col()).hit then
		
	end
	
	if tutorialSuit:Button("Next", tutorialSuit.layout:col()).hit then
		if tLines[currentLine + 1] ~= nil then
			currentLine = currentLine + 1
		end
	end
	
	tutorialSuit:draw()
end

--Tutorial callbacks for the state machine
fsm.onTutorial = function(self, event, from, to) drawState = drawTutorial end


