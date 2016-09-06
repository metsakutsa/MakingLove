--This file contains functions for creating and managing buttons

--This is a table of buttons
button = { }
buttonWidth = 150
buttonHeight = 50


--This function spawns buttons into the table above
function button.spawn( x, y, label, id )
	table.insert( button, { x = x, y = y, label = label, id = id} )
end

--This function draws the buttons from the table above
function button.draw()
	for i,v in ipairs(button) do
		r,g,b = love.graphics.getColor()
		love.graphics.setColor(255,255,255)
		love.graphics.rectangle("fill", v.x, v.y, buttonWidth, buttonHeight)
		love.graphics.setColor(0,0,0)
		love.graphics.printf(v.label, v.x, v.y+buttonHeight/2 - fontSize/2, buttonWidth, "center")
		love.graphics.setColor(r,g,b)
	end
end

--This function checks if buttons are clicked
function button.click(x,y)
	for i,v in ipairs(button) do
		if x > v.x and
			x < v.x + buttonWidth and
			y > v.y and
			y < v.y + buttonHeight then
			return v.id
		end
	end
end