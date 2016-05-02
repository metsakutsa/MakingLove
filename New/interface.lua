suit = require "Libraries/SUIT"

--INTERFACE CLASS
--Creates a graphical user interface
Interface = {}
function Interface.new( x, y, width, height, fill )
	local self ={}
	local x = x
	local y = y
	local width = width
	local height = height
	
	function self.draw()
	--TODO BETTER
		love.graphics.setColor(fill)
		love.graphics.rectangle("fill", x, y, width, height)
	end
	
	function self.getX()
		return x
	end
	
	function self.getY()
		return y
	end
	
	function self.getWidth()
		return width()
	end
	
	function self.getHeight()
		return height
	end
	
	return self
end




















--MENU CLASS
--Creates a new graphical menu with a maximum of 4 buttons and buttons only, no background; the background is to be set with the interface class.
--Create a new menu variable, call Menu.new and insert desired button labels as button1...button4 and their IDs by id1...id4
Menu = {}
function Menu.new( x, y, width, height, button1, id1, button2, id2, button3, id3, button4, id4)
	local self = Interface.new()
	function self.draw()
		if button1 and id1 then
		Button.new(button1, id1).draw()
			if button2 and  id2 then
			Button.new(button2, id2).draw()
				if button3 and id3 then
				Button.new(button3, id3).draw()
					if button4 and id4 then
						Button.new(button4, id4).draw()
					end				
				end
			end
		end
	end
	return self
end

--Main menu stuff
mainMenu = Menu.new("New game", "new game menu", "Load game", "load game menu", "Configuration", "configuration menu", "Quit", "quit")
newGameMenu = Menu.new("Slot 1", "new game slot 1", "Slot 2", "new game slot 2", "Back", "back")
loadGameMenu = Menu.new("Load", "load game", "Back", "back")
configurationMenu = Menu.new("Setting", "setting", "Back", "back")