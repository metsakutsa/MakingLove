require "button"

--Write the text
love.graphics.setColor(255,255,255)
narrative = readLines("text files/Narrative.txt")
currentLine = 1


function intro()
	if string.find(narrative[currentLine], "#") then
		_G[string.sub(narrative[currentLine],2)]()
	else
		love.graphics.printf(narrative[currentLine], 100, 100, 1080, "center")
	end

	--Draw the buttons
	buttonDraw()
end