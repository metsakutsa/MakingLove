require "button"

--Write the text
love.graphics.setColor( 255, 255, 255 )
narrative = readLines( "text files/Narrative.txt" )
currentLine = 1

--Lez spawn some buttons
buttonSpawn( 400, 600, "Previous", "previous" )
buttonSpawn( 680, 600, "Next", "next" )
buttonSpawn( 1000, 600, "Exit", "quit" )

function intro()
	if string.find(narrative[currentLine], "#") then
		_G[string.sub(narrative[currentLine],2)]()
	else
		love.graphics.printf(narrative[currentLine], 100, 100, 1080, "center")
	end

	--Draw the buttons
	buttonDraw()
end