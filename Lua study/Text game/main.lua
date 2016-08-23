--><
require "IO manager"
require "states"
require "button"
require "question"

function love.load()
	--Text things
	narrative = readLines("text files/Narrative.txt")
	currentLine = 1
	love.graphics.setFont(love.graphics.newFont(32))
	
	
	--Button things

	--Lez spawn some buttons
	buttonSpawn( button, 400, 600, "Previous", "previous" )
	buttonSpawn( button, 680, 600, "Next", "next" )
	
end

function love.draw()
	--Write the text
	love.graphics.setColor(255,255,255)
	love.graphics.printf(narrative[currentLine], 100, 100, 1080, "center")
	
	--Draw the buttons
	buttonDraw(button)
end

function love.update()
end

function love.mousepressed(x,y)
	if buttonClick(button,x,y) == "next" and currentLine < table.getn(readLines("text files/Narrative.txt")) then
		currentLine = currentLine + 1
	end
	if buttonClick(button,x,y) == "previous" and currentLine > 1 then
		currentLine = currentLine - 1
	end
	
	if buttonClick(button,x,y) == "quit" then fsm:quit() end
	if buttonClick(button,x,y) == "agree" then fsm:positive() end
	if buttonClick(button,x,y) == "back" then fsm:question() end
	
	print (buttonClick(button,x,y))
end

fsm.onquit = function(self, event, from, to) love.event.quit() end