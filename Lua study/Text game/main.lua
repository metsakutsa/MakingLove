--><
require "IO manager"
require "states"
require "button"
require "question"
require "intro"

function love.load()
	--Text things
	narrative = readLines("text files/Narrative.txt")
	currentLine = 1
	love.graphics.setFont(love.graphics.newFont(32))
	
	drawState = intro

end

function love.draw()
	drawState()
end

function love.update()

end

function love.mousepressed(x,y)
	if buttonClick(x,y) == "next" and currentLine < table.getn(readLines("text files/Narrative.txt")) then
		currentLine = currentLine + 1
	end
	if buttonClick(x,y) == "previous" and currentLine > 1 then
		currentLine = currentLine - 1
	end
	
	if buttonClick(x,y) == "quit" then fsm:quit() end
	if buttonClick(x,y) == "option1" then fsm:option1() end
	if buttonClick(x,y) == "option2" then fsm:option2() end
	
	print (buttonClick(x,y))
end

fsm.onquit = function(self, event, from, to) love.event.quit() end