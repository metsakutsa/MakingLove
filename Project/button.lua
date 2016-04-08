require "state"


--CLASS OF BUTTONS
--Creates a new button with the size specified by width and height variables
Button = {}
function Button.new(name, state)
	local self = {}
	local width = 400
	local height = 100
	
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
		if suit.Button(name, suit.layout:row(width,height)).hit then
			StateMachine.setState(state)
		end
	end
	
	return self
end