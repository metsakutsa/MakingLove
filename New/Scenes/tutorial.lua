suit = require "Libraries/SUIT"
require "states"

function drawTutorial()
	suit.layout:reset( 0, 0, 0, 0 )
	
	--And textbox itself
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", 5, 405, 790, 190)
	
	--Make text
	suit.layout:reset( 100, 425, 0, 0 )
	suit.Label("Welcome to the hydraulic press channel", suit.layout:row(600, 100))
	
	--Make next and prev and skip button
	suit.layout:reset( 510, 550, 10, 0 )
	if suit.Button("Previous", suit.layout:col(80,30)).hit then
		fsm:PreviousLine()
	end
	
	if suit.Button("Skip", suit.layout:col()).hit then 
		fsm:Skip()
	end
	
	if suit.Button("Next", suit.layout:col()).hit then 
		fsm:NextLine()
	end
	
end

--Tutorial callbacks for the state machine
fsm.onTutorial = function(self, event, from, to) drawState = drawTutorial end