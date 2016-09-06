player = {}

function player.draw()
	--save current colors and set new ones
	r, g, b= love.graphics.getColor()
	love.graphics.setColor(255,0,0)
	
	love.graphics.rectangle("fill", love.graphics.getWidth()/10, love.graphics.getHeight()/3 ,100, love.graphics.getHeight()/3)
	
	
	--return old colors
	love.graphics.setColor(r,g,b)
end

function player.move()
	if love.keyboard.isDown("d") then
		--move right
		print("moving right")
		return "right"

	elseif love.keyboard.isDown("a") then
		--move left
		print("moving left")
		return "left"
	end
end



function player.update()
	return player.move()
end