--This file contains functions for creating and managing buttons

--This is a table of buttons
button = {}

--This function spawns buttons into the table above
function buttonSpawn( buttonTable, x, y, label, id)
	table.insert( buttonTable, { x = x, y = y, label = label, id = id} ) 
end

--This function draws the buttons from the table above
function buttonDraw(buttonTable)
	for i,v in ipairs(buttonTable) do
		love.graphics.setColor(255,255,255)
		love.graphics.rectangle("fill", v.x, v.y, 200, 100)
		love.graphics.setColor(0,0,0)
		love.graphics.printf(v.label, v.x, v.y+34, 200, "center")
	end
end

--This function checks if buttons are clicked
function buttonClick(buttonTable,x,y)
	for i,v in ipairs(buttonTable) do
		if x > v.x and
			x < v.x + 200 and
			y > v.y and
			y < v.y + 100 then
			return v.id
		end
	end
end