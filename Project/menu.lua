suit = require "Libraries/SUIT"

--MENU CLASS
Menu = {}
function Menu.new(name)
	local self = {}
	local name = name
	
	function self.getName()
		if name then
			return name
		else
			return "No name"
		end
	end
	
	function self.drawMenu()
	end
	
	return self
end



--BUTTON CLASS
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



MainMenu = {}
function MainMenu.new()
	local self = Menu.new("Main menu")
	
	function self.draw()
		Button.new("New game", "new game menu").draw()
		Button.new("Load game", "load game menu").draw()
		Button.new("Configuration", "configuration menu").draw()
		Button.new("Quit", "quit").draw()
	end
	return self
end



function drawMainMenu()
	suit.layout:reset(200,100,10,10)

	newGameButton = suit.Button("New game", suit.layout:row(400,100))
	loadGameButton = suit.Button("Load game", suit.layout:row())
	configButton = suit.Button("Configuration", suit.layout:row())
	quitButton = suit.Button("Quit", suit.layout:row())

	table.insert(buttons, newGameButton)
	table.insert(buttons, loadGameButton)
	table.insert(buttons, configButton)
	table.insert(buttons, quitButton)
end

function drawNewGameMenu()
	suit.layout:reset(200,100,10,10)
	newGameSlot1 = suit.Button("Slot 1", suit.layout:row(400,100))
	newGameSlot2 = suit.Button("Slot 2", suit.layout:row())
	newGameSlot3 = suit.Button("Slot 3", suit.layout:row())
	mainMenuButton = suit.Button("Main menu", suit.layout:row())

	table.insert(buttons, newGameSlot1)
	table.insert(buttons, newGameSlot2)
	table.insert(buttons, newGameSlot3)
	table.insert(buttons, mainMenuButton)
end

function drawLoadGameMenu()
	suit.layout:reset(200,100,10,10)
	loadGameSlot1 = suit.Button("Slot 1", suit.layout:row(400,100))
	loadGameSlot2 = suit.Button("Slot 2", suit.layout:row())
	loadGameSlot3 = suit.Button("Slot 3", suit.layout:row())
	mainMenuButton = suit.Button("Main menu", suit.layout:row())

	table.insert(buttons, loadGameSlot1)
	table.insert(buttons, loadGameSlot2)
	table.insert(buttons, loadGameSlot3)
	table.insert(buttons, mainMenuButton)
end

function drawConfigMenu()
	suit.layout:reset(200,100,10,10)

	videoConfigButton = suit.Button("Video", suit.layout:row(400,100))
	audioConfigButton = suit.Button("Audio", suit.layout:row())
	mainMenuButton = suit.Button("Main menu", suit.layout:row())

	table.insert(buttons, videoConfigButton)
	table.insert(buttons, audioConfigButton)
	table.insert(buttons, mainMenuButton)
end

