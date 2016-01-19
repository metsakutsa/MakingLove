local borderThickness = 4
closeWindowX, closeWindowY, closeWindowW,closeWindowH = 0,0,0,0

function drawWindow( x, y, width, height)
	--SAVE CURRENT COLOR
	local r,g,b,a = love.graphics.getColor()
	--BORDERs
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
	closeWindowX, closeWindowY, closeWindowW,closeWindowH = x+width-32-borderThickness, y+borderThickness, 32, 32
	love.graphics.rectangle("fill", closeWindowX, closeWindowY, closeWindowW,closeWindowH)
	--SET BACK OLD COLOR
	love.graphics.setColor(r,g,b,a)
	
end

function drawButton( x, y, width, height)
	--SAVE CURRENT COLOR
	local r,g,b,a = love.graphics.getColor()
	--BORDERs
	love.graphics.setColor(0,0,0, 255)
	love.graphics.rectangle("fill", x, y, width, height)
	--BUTTON
	buttonX, buttonY, buttonW, buttonH =  x, y, width, height
	love.graphics.setColor(200,200,255, 255)
	love.graphics.rectangle("fill", x + borderThickness, y+borderThickness, width-borderThickness*2, height-borderThickness*2)
	--SET BACK OLD COLOR
	love.graphics.setColor(r,g,b,a)
end