require "button"

--Lez spawn some buttons
buttonSpawn( 400, 600, "Option 1", "option1" )
buttonSpawn( 680, 600, "Option 2", "option2" )
buttonSpawn( 1000, 600, "Exit", "quit" )

function question()
	love.graphics.setColor(255,255,0)
	love.graphics.rectangle("fill", 100, 100, 450, 100)
	love.graphics.setColor(0,0,0)
	love.graphics.print("You reached question", 120, 130)
end
