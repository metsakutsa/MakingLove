suit = require "Libraries/SUIT"
require "states"

--Is the main menu screen, also acts as a base for some features of all submenus such as BG color
function drawMainMenu()
	--Sets the BG color for all the menus as this is the first to be called always
	love.graphics.setBackgroundColor({ 255,255,255 })
	
	--This needs to be in every menu drawing function
	suit.layout:reset(300,75,10,10)
	
	--Create the desired buttons
	if suit.Button("New game", suit.layout:row(200,100)).hit then
		fsm:NewGame()
	end
	
	if suit.Button("Load game", suit.layout:row(200,100)).hit then
		fsm:LoadGame()
	end
	
	if suit.Button("Configuration", suit.layout:row(200,100)).hit then
		fsm:Configuration()
	end
	
	if suit.Button("Quit", suit.layout:row(200,100)).hit then
		fsm:Quit()
	end
	
end

function drawNewGame()
	suit.layout:reset(300,75,10,10)
	
	if suit.Button("Slot 1", suit.layout:row(200,100)).hit then
		fsm:Tutorial()
	end
	
	if suit.Button("Slot 2", suit.layout:row(200,100)).hit then
		fsm:Test()
	end
	
	if suit.Button("Slot 3", suit.layout:row(200,100)).hit then
		fsm:Tutorial()
	end
	
	if suit.Button("Back", suit.layout:row(200,100)).hit then
		fsm:MainMenu()
	end
	
end

function drawLoadGame()
	suit.layout:reset(300,75,10,10)
	
	if suit.Button("Slot 1", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Slot 2", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Slot 3", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Back", suit.layout:row(200,100)).hit then
		fsm:MainMenu()
	end
	
end

function drawConfiguration()
	suit.layout:reset(300,75,10,10)
	
	if suit.Button("Video", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Audio", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Controls", suit.layout:row(200,100)).hit then
		
	end
	
	if suit.Button("Back", suit.layout:row(200,100)).hit then
		fsm:MainMenu()
	end
	
end

--All the required callbacks to be added to the state machine
fsm.onMainMenu = function(self, event, from, to) drawState = drawMainMenu end
fsm.onNewGame = function(self, event, from, to) drawState = drawNewGame end
fsm.onLoadGame = function(self, event, from, to) drawState = drawLoadGame end
fsm.onConfiguration = function(self, event, from, to) drawState = drawConfiguration end
fsm.onQuit = function(self, event, from, to) love.event.quit() end