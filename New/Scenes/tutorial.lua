suit = require "Libraries/SUIT"
require "states"

function drawTutorial()
	suit.layout:reset( 0, 0, 0, 0 )
	
	--Lets make nice border for whole window
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill", 0, 0, 800, 600)
	
	love.graphics.setColor(200,200,200)
	love.graphics.rectangle("fill", 1, 1, 798, 598)
	
	--And window itself
	love.graphics.setColor(155,155,50)
	love.graphics.rectangle("fill", 5, 5, 790, 590)
	
	--Lets make nice border for textbox
	love.graphics.setColor(200,200,200)
	love.graphics.rectangle("fill", 1, 400, 798, 198)
	
	--And textbox itself
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", 5, 405, 790, 190)
	
	love.graphics.setBackgroundColor(155,155,50)
	
	suit.layout:reset( 300, 250, 0, 0 )
	if suit.Button("Back to menu", suit.layout:row(200,100)).hit then 
		fsm:MainMenu()
	end
	
end

--Tutorial callbacks for the state machine
fsm.onTutorial = function(self, event, from, to) drawState = drawTutorial end