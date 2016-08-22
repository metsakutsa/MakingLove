--><
require "IO manager"
require "states"
require "button"

function love.load()
	--Text things
	narrative = readLines("Narrative.txt")
	print(table.getn(readLines("Narrative.txt")))
	currentLine = 1
	love.graphics.setFont(love.graphics.newFont(32))
	
	--Button things

	--Lez spawn some buttons
	buttonSpawn( 400, 600, "Previous", "previous" )
	buttonSpawn( 680, 600, "Next", "next" )
	
	
end

function love.draw()
	--Write the text
	love.graphics.setColor(255,255,255)
	love.graphics.printf(narrative[currentLine], 100, 100, 1080, "center")
	
	--Draw the buttons
	buttonDraw()
end

function love.update()
end

function love.mousepressed(x,y)
	if buttonClick(x,y) == "next" and currentLine < table.getn(readLines("Narrative.txt")) then
		currentLine = currentLine + 1
	end
	if buttonClick(x,y) == "previous" and currentLine > 1 then
		currentLine = currentLine - 1
	end
	
	print (buttonClick(x,y))
end