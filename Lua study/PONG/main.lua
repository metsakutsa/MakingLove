

function love.load()	--Initial load for stuff...
	score_p1 = 0
	score_p2 = 0
	
	speed_p1 = 10
	speed_p2 = 10
	
	ball_speed = 20
	
	position_p1 = 0
	position_p2 = 0
	
	big_font = love.graphics.newFont(32)
	
	timer = love.timer.getTime() + 0.01 --wht is this?
	
	spawn_ball()
end

function spawn_ball()
	ball = { love.graphics.getWidth()/2, love.graphics.getHeight()/2 }
	
	ball_direction = love.math.random(1,2)
	ball_ascension = love.math.random(-ball_speed,ball_speed)
	
end

function love.draw() 	--This will draw the graphics and score
	love.graphics.setColor(255,255,255)
	
	--Draw paddles
	love.graphics.rectangle("fill", 0, position_p1, 16, 128)
	love.graphics.rectangle("fill", love.graphics.getWidth()-16, position_p2, 16, 128)
	
	--Draw the ball
	love.graphics.rectangle("fill", ball[1], ball[2], 16, 16)
	
	--Draw the scoreboard
	love.graphics.setFont(big_font)
	love.graphics.printf(score_p1 .. "        " .. score_p2, 0, 0, love.graphics.getWidth(), "center")
	
end


function love.update()	-- This will update the logics, move the ball and paddles
	--Prevent speeding issues or sth?????
	if timer > love.timer.getTime() then return end
	timer = love.timer.getTime()+0.001
	
	--Get input from player 1
	if love.keyboard.isDown("w") then
		position_p1 = position_p1 - speed_p1
		if position_p1 < 0 then position_p1 = 0 end
	elseif love.keyboard.isDown("s") then	
		position_p1 = position_p1 + speed_p1
		if position_p1+128 > love.graphics.getHeight() then position_p1 = love.graphics.getHeight()-128 end
	end
	
	--Get input from player 2
	if love.keyboard.isDown("up") then
		position_p2 = position_p2 - speed_p2
		if position_p2 < 0 then position_p2 = 0 end
	elseif love.keyboard.isDown("down") then
		position_p2 = position_p2 + speed_p2
		if position_p2+128 > love.graphics.getHeight() then position_p2 = love.graphics.getHeight()-128 end
	end
	
	--Make the ball move
	if ball_direction == 1 then
		ball[1] = ball[1] - ball_speed
	else
		ball[1] = ball[1] + ball_speed
	end
	ball[2] = ball[2] + ball_ascension
	
	--Keep ball in vertical boundaries
	if ball[2] < 0 then ball_ascension = -(ball_ascension) end
	if ball[2] > love.graphics.getHeight()-16 then ball_ascension = -(ball_ascension) end
	
	--Keep score
	if ball[1] > love.graphics.getWidth() then
		score_p1 = score_p1 + 1
		spawn_ball()
	elseif ball[1] < 0 then 
		score_p2 = score_p2 + 1
		spawn_ball()
	end
	
	--Collision
	--account for ball size too, 16 pix
	if ball[1] < 16 and ball[2] >= position_p1-16 and ball[2] <= position_p1 + 128 then
		ball_direction = -(ball_direction)
		--ball_ascension = ball_ascension*-1
	end
	
	if ball[1] > love.graphics.getWidth()-32 and ball[2] >= position_p2-16 and ball[2] <= position_p2 + 128 then
		ball_direction = -(ball_direction)
		--ball_ascension = ball_ascension*-1
	end
end
