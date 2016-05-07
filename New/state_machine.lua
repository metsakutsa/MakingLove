require "button"

--State machine class
--The core thing that is always running
--Contains the setState() function for entering a new state
--Contains initialization function that happens during each state change
--Contains idle function that runs when state is active
State = {}
function State.new(name)
	local self = {}
	local name = name
	
	function self.getName()
		return name
	end
	
	function self.init()
		--DO SOMETHING WHEN STATE IS ENTERED
	end
	
	function self.idle()
		--DO SOMETHING WHEN STATE IS ACTIVE AFTER INIT
	end
	
	function self.exit()
		--TO SOMETHING WHEN STATE IS EXITED FROM
	end
	
	return self
end


--YELLOW STATE
yellowState = State.new("yellow")
function yellowState.draw()
	Interface.new(0,0,800,600, {255,255,0}).draw()
	Button.new("RED", "red", 50, 250, 200, 100).draw()
	Button.new("BLUE", "blue", 300, 250, 200, 100).draw()
	Button.new("YELLOW", "yellow", 550, 250, 200, 100).draw()
end
yellowState.init() = yellowState.draw()

--RED STATE
redState = State.new("red")
function redState.draw()
	Interface.new(0,0,800,600, {255,0,0}).draw()
	Button.new("RED", "red", 50, 250, 200, 100).draw()
	Button.new("BLUE", "blue", 300, 250, 200, 100).draw()
	Button.new("YELLOW", "yellow", 550, 250, 200, 100).draw()
end

--BLUE STATE
blueState = State.new("blue")
function blueState.draw()
	Interface.new(0,0,800,600, {0,0,255}).draw()
	Button.new("RED", "red", 50, 250, 200, 100).draw()
	Button.new("BLUE", "blue", 300, 250, 200, 100).draw()
	Button.new("YELLOW", "yellow", 550, 250, 200, 100).draw()
end