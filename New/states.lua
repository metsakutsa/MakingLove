--HERE WE WILL BE STORING ALL OF THE STATES OF EVER. YES, ALL OF THEM...
--Because I do not know how to organize it in a more appealing fashion. This is simple and it works, i.e perfection
local machine = require('Libraries/Statemachine/statemachine')

fsm = machine.create({
	--initial = "mainMenu",
	events = {
	
	--MAIN MENU STATES
	{ name = "MainMenu", from = {"NewGame", "LoadGame", "Configuration", "none", "Tutorial"}, to = "MainMenu" },
	{ name = "NewGame", from = "MainMenu", to = "NewGame" },
	{ name = "LoadGame", from = "MainMenu", to = "LoadGame" },
	{ name = "Configuration", from = "MainMenu", to = "Configuration" },
	{ name = "Quit", from = "MainMenu", to = "Quit" },
	
	
	--TUTORIAL SCENE STATES
	{ name = "Tutorial", from = "NewGame", to = "Tutorial" },
	

	
	
	
	{ name = "", from = "", to = "" }
	},
})
