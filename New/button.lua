--CLASS OF BUTTONS
--Creates a new button with the size specified by width and height variables
Button = {}
function Button.new(name, id, x, y, width, height)
	local self = {}
	local x = x
	local y = y
	local width = width
	local height = height
	local id = id
	local name = name
	
	function self.getName()
		return name
	end
	
	function self.getID()
		return id
	end
	
	function self.getX()
		return x
	end
	
	function self.getY()
		return y
	end
	
	function self.getWidth()
		return width
	end
	
	function self.getHeight()
		return height
	end
	
	function self.draw()
		suit.layout:reset( x, y, 10, 10 )
		if suit.Button(name, suit.layout:row(width,height)).hit then
			id .. State.draw()
			--State[id].draw()
		end
	end
	
	return self
end