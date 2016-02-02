--SUIT interfaces
newGame = suit.new()
mainMenu = suit.new()
confMenu = suit.new()
loadGame = suit.new()
quitGame = suit.new()


--Color settings for the buttons
suit.theme.color = {
normal  = {bg = { 0, 66, 66}, fg = {188,188,188}},
hovered = {bg = { 50,153,187}, fg = {255,255,255}},
active  = {bg = {255,153,  0}, fg = {225,225,225}}
}

buttons = {}

function createButton(instance, text, identificator, width, height)
	table.insert(buttons, {text = text, id = identificator})
	instance:Button(text, {id = identificator}, instance.layout:row(width, height))
end

--------------------MAIN MENU-------------------------------------------------------------------
function drawMainMenu()
	--Set layout origin
	mainMenu.layout:reset(200,100,10,10)

	--Main menu buttons
	--newGameButton = createButton(mainMenu, "New game", "new game", 400, 100)
	--loadGameButton = createButton(mainMenu, "Load game", "load game menu", 400, 100)
	--confButton = createButton(mainMenu, "Configuration", "configuration menu", 400, 100)
	--quitButton = createButton(mainMenu, "Quit game", "quit game", 400, 100)

	newGameButton = mainMenu:Button("New game", {id = "new game"}, mainMenu.layout:row(400,100))
	if newGameButton.hit then
		currentGameState = newGameButton.id
	end
	loadGameButton = mainMenu:Button("Load game",{id = "load game menu"}, mainMenu.layout:row())
	if loadGameButton.hit then
		currentGameState = loadGameButton.id
	end
	confButton = mainMenu:Button("Configuration", {id = "configuration menu"}, mainMenu.layout:row())
	if confButton.hit then
		currentGameState = confButton.id
	end
	quitButton = mainMenu:Button("Quit", {id = "quit game"}, mainMenu.layout:row())
	if quitButton.hit then
		currentGameState = quitButton.id
	end	
end

------------------------------------------------------------------------------------------------


------------------CONFIGURATION MENU------------------------------------------------------------
function drawConfMenu()
	--Set layout origin
	confMenu.layout:reset(200,100,10,10)

	--Configuration menu buttons
	somethingButton = confMenu:Button("Something", {id = "sth"}, confMenu.layout:row(400,100))

	mainMenuButton = confMenu:Button("Main menu", {id = "main menu"} , confMenu.layout:row())
end
------------------------------------------------------------------------------------------------

function buttonHit()
	for i,v in ipairs(buttons) do
		if v.hit then
			currentGameState = v.identificator
		end
	end
end