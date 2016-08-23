--Text things
narrative = readLines("text files/Narrative.txt")
currentLine = 1
love.graphics.setFont(love.graphics.newFont(32))

--Button things
questionButtons = {}

--Lez spawn some buttons
buttonSpawn( questionButtons, 400, 600, "", "previous" )
buttonSpawn( questionButtons, 680, 600, "Next", "next" )

function drawQuestion()
	
end
