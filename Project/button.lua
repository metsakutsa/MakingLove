--CLASS OF BUTTONS
Button = {}
function Button.new(name, state)
	local self = {}
	local name = name
	local id = id
	local func = func
	
	function self.getName()
		if name then
			return name
		else
			return "No name"
		end
	end
	
	function self.getState()
		if state then
			return state
		else
			return "No state"
		end
	end
	
	function self.draw()
		if suit.Button(name, suit.layout:row(400,100)).hit then
			print(self.getState())
		end
	end
	
	return self
end