suit = require "Libraries/SUIT"

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

