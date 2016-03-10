states = {
	"menu",
	"cutscene",
	"combat",
	"dialogue",
	"map"
}

--States class
State = {}
function State.new(name)
	local self = {}
	local name = name

	function self.draw()

	end
	return self
end


menu = {}
function menu()
	local self = State.new(menu)

	return self
end

--menu state
menu = State.new("menu")
function menu.draw()
	suit.layout:reset(200,100,10,10)
	newGameButton = Button.new("New game",newGameState, 400, 100 ).draw()
	loadGameButton = Button.new("Load game", loadGameState).draw()
	configureButton = Button.new("Configure", configurationState).draw()
	quitButton = Button.new("Quit","quit").draw()
	
end








cutscene = State.new("cutscene")
combat = State.new("combat")
dialogue = State.new("dialogue")
map = State.new("map")