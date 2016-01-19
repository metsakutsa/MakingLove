local borderThickness = 4

--THE COORDINATES INFORMATION OF THE BUTTON FOR CLOSING THE WINDOW
closeWindowButton = {}
closeWindowButton.x, closeWindowButton.y, closeWindowButton.w, closeWindowButton.h = 0,0,0,0

--THE COORDINATES INFORMATION FOR A BUTTON
windowButton = {}
windowButton.x, windowButton.y, windowButton.w, windowButton.h = 0,0,0,0

function drawWindow( x, y, width, height)
	--SAVE CURRENT COLOR
	local r,g,b,a = love.graphics.getColor()
	--BORDER
	love.graphics.setColor(0,0,0, 255)
	love.graphics.rectangle("fill", x, y, width, height)
	--WINDOW
	love.graphics.setColor(255,255,255, 255)
	love.graphics.rectangle("fill", x + borderThickness, y+borderThickness, width-borderThickness*2, height-borderThickness*2)
	--SET BACK OLD COLOR
	love.graphics.setColor(r,g,b,a)
	
end

function drawClosableWindow( x, y, width, height)
	--SAVE CURRENT COLOR
	local r,g,b,a = love.graphics.getColor()
	--WINDOW ITSELF
	drawWindow(x,y,width,height)
	--CLOSING BUTTON
	love.graphics.setColor(255,0,0)
	closeWindowButton.x, closeWindowButton.y, closeWindowButton.w, closeWindowButton.h = x+width-32-borderThickness, y+borderThickness, 32, 32
	love.graphics.rectangle("fill", closeWindowButton.x, closeWindowButton.y, closeWindowButton.w, closeWindowButton.h)
	--SET BACK OLD COLOR
	love.graphics.setColor(r,g,b,a)
	
end

function drawButton( x, y, width, height)
	--SAVE CURRENT COLOR
	local r,g,b,a = love.graphics.getColor()
	--BORDER
	love.graphics.setColor(220,220,255, 255)
	love.graphics.rectangle("fill", x, y, width, height)
	--BUTTON
	windowButton.x, windowButton.y, windowButton.w, windowButton.h =  x, y, width, height
	love.graphics.setColor(200,200,255, 255)
	love.graphics.rectangle("fill", x + borderThickness, y+borderThickness, width-borderThickness*2, height-borderThickness*2)
	--SET BACK OLD COLOR
	love.graphics.setColor(r,g,b,a)
end