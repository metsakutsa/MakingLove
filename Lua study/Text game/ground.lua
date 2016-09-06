ground = {}


function ground.load()
	position = 0
	width = 320
	tone1 = {50,200,20}
	tone2 = {50,200,100}
	speed = 4
end

ground.load()

function ground.draw()
	--save current colors and set new ones
	r, g, b= love.graphics.getColor()
	
	love.graphics.setColor(tone1)
	love.graphics.rectangle("fill", position, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	love.graphics.setColor(tone2)
	love.graphics.rectangle("fill", position+width, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	
	love.graphics.setColor(tone1)
	love.graphics.rectangle("fill", position+width*2, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	love.graphics.setColor(tone2)
	love.graphics.rectangle("fill", position+width*3, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	
	love.graphics.setColor(tone1)
	love.graphics.rectangle("fill", position+width*4, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	love.graphics.setColor(tone2)
	love.graphics.rectangle("fill", position+width*5,love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	
	love.graphics.setColor(tone1)
	love.graphics.rectangle("fill", position+width*6, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	love.graphics.setColor(tone2)
	love.graphics.rectangle("fill", position+width*7, love.graphics.getHeight()/2, width, love.graphics.getHeight()/2)
	
	
	--return old colors
	love.graphics.setColor(r,g,b)
end

function ground.move(direction)
	print (position)

	
	if direction == "right" then
		position = position - speed
		if position < -(love.graphics.getWidth()-speed) then
			position = speed
		end
	
	elseif direction == "left" then
		position = position + speed
		if position > -speed then
			position = -(love.graphics.getWidth())
		end
	end
end


function ground.update()
	
end