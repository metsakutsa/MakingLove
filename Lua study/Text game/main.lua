--><
require "IO manager"
require "states"
--require "button"
--require "intro"
require "player"	
require "ground"
require "UI"


function love.load()
	currentLine = 1
	love.graphics.setBackgroundColor(100,100,100)
	fontSize = 16
	font = love.graphics.newFont(fontSize)
	love.graphics.setFont(font)
	narrative = readLines("Text files/Narrative.txt")
	
	--drawState = intro
end

function love.draw()
	--drawState()
	ground.draw()
	player.draw()
	
	UI.draw()
	button.draw()
end




function love.update(dt)
	if player.update() ~= nil then
		ground.move(player.update())
	end
end




function love.mousepressed(x,y)
	if button.click(x,y) then
		print (button.click(x,y))
	end
	
	if button.click(x,y) == "next" and currentLine < table.getn(narrative) then
		currentLine = currentLine + 1
	end
	if button.click(x,y) == "previous" and currentLine > 1 then
		currentLine = currentLine - 1
	end
	
	if button.click(x,y) == "quit" then fsm:quit() end
	if button.click(x,y) == "option1" then fsm:option1() end
	if button.click(x,y) == "option2" then fsm:option2() end	
end

fsm.onquit = function(self, event, from, to) love.event.quit() end