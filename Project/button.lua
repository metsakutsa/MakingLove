--CLASS OF BUTTONS

Button = {}

function Button.new(label, state, width, height)
	local self = {}
	local label = label
	local state = state
	local width = width
	local height = height

	function self.changeState()
		if self.hit then
			currentState = state
		else
		    return
		end
	end

	function self.draw()
		suit.Button(label, suit.layout:row(width, height))
	end

	return self
end

