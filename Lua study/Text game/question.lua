--Text things
narrative = readLines("text files/Narrative.txt")
currentLine = 1
love.graphics.setFont(love.graphics.newFont(32))

--Button things
questionButtons = {}

--Lez spawn some buttons
buttonSpawn( questionButtons, 400, 600, "Option 1", "option1" )
buttonSpawn( questionButtons, 680, 600, "Option 2", "option2" )

function question()
	love.graphics.setColor(255,255,0)
	love.graphics.rectangle("fill", 100, 100, 450, 100)
	love.graphics.setColor(0,0,0)
	love.graphics.print("You reached question", 120, 132)
end
