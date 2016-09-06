require "button"

UI = {}

border = 5
h_padding = love.graphics.getWidth()/20
v_padding = love.graphics.getHeight()/20

function UI.draw()
	--draw the bottom panel with buttons
	r,g,b = love.graphics.getColor()
	
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill", 0, love.graphics.getHeight() - love.graphics.getHeight()/4, love.graphics.getWidth(), love.graphics.getHeight()/4)
	
	love.graphics.setColor(200,200,100)
	love.graphics.rectangle("fill", border, love.graphics.getHeight() - love.graphics.getHeight()/4 + border, love.graphics.getWidth()-border*2, love.graphics.getHeight()/4-border*2)
	
	button.spawn(h_padding, love.graphics.getHeight()-v_padding - buttonHeight, "Quit", "quit" )
	button.spawn(love.graphics.getWidth()-h_padding - buttonWidth, love.graphics.getHeight()-v_padding - buttonHeight, "Next", "next" )
	button.spawn(love.graphics.getWidth()- 2*h_padding - buttonWidth * 2, love.graphics.getHeight()-v_padding - buttonHeight, "Previous", "previous" )
	
	love.graphics.setColor(0,0,0)
	love.graphics.printf(narrative[currentLine], h_padding, love.graphics.getHeight() - v_padding - love.graphics.getHeight()/8, love.graphics.getWidth()-2*h_padding, "center")
	
	love.graphics.setColor(r,g,b)
end