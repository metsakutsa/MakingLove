--States class
State = {}
function State.new(prevState, newState)
	local self = {}
	local currentState
	local prevState
	
	function self.getCurrentState()
		return self.currentState
	end
	
	function self.setState()
		prevState = self.getCurrentState()
		currentState = newState
	end
	
	return self
end

StateMachine = State.new("start", "main menu")