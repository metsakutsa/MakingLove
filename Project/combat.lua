--MAIN CHARACTER CLASS
Character = {}
function Character.new(name, hitpoints, power)
	local self = {}
	local name = name
	local hitpoints = hitpoints
	local power = power

	function self.getName()
		if name then
			return name
		else
			return "No name :("
		end
	end
	
	function self.getHitpoints()
		if hitpoints then
			return hitpoints
		else
			return "No hitpoints :("
		end
	end
	
	function self.getPower()
		if power then
			return power
		else
			return "No power :("
		end
	end
	
	function self.setName(newName)
		name = newName
	end
	
	function self.setHitpoints(newHP)
		hitpoints = newHP
	end
	
	function self.setPower(newPower)
		power=newPower
	end
		
	return self
end


--CLASS FOR ENEMY CHARACTERS
EnemyCharacter = {}
function EnemyCharacter.new(name, hitpoints, power)
	local self = Character.new(name, hitpoints, power)
	function self.draw(x,y)
		love.graphics.setColor(255,0,0)
		love.graphics.rectangle("fill", x, y, 64, 128)
	end
	
	return self
end


--CLASS FOR PLAYERCHARACTERS
PlayerCharacter = {}
function PlayerCharacter.new(name, hitpoints, power)
	local self = Character.new(name, hitpoints, power)
	
	function self.draw(x,y)
		love.graphics.setColor(0,255,0)
		love.graphics.rectangle("fill", x, y, 64, 128)
	end

	return self
end