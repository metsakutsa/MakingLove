suit = require "Libraries/SUIT"
require "states"

-- Opens a file in read
local file = io.open("Scenes/tutorial_dialogue.lua", "r")

currentLine = io.read()
-- closes the open file
io.close(file)







--First lets read the file and put the contents in a table name tContents
local file = io.open("example.txt", "r")
sContents = file:read() -- capture file in a string
file:close()
tContents = textutils.unserialize(sContents) -- convert string to table

--Print a specific line
print (tContents[3])

--Modify a specific line
table.remove(tContents, 3) -- will remove line 3 so we can insert the new line 3
table.insert(tContents, 3, "New Information") -- inserts the string "New Infomation" on line 3 in the table.

--Convert table to string and save the file
sContents = textutils.serialize(tContents)
local file = io.open("example.txt", "w")
file:write(sContents)
file:close()









function drawTutorial()
	suit.layout:reset( 0, 0, 0, 0 )
	
	--And textbox itself
	love.graphics.setColor(50,50,50)
	love.graphics.rectangle("fill", 5, 405, 790, 190)
	
	--Make text
	suit.layout:reset( 100, 425, 0, 0 )
	-- Opens a file in read
	file = io.open("Scenes/tutorial_dialogue.lua", "r")
	-- prints the first line of the file
	suit.Label(currentLine, suit.layout:row(600, 100))
	-- closes the open file
	file:close()
	
	
	--Make next and prev and skip button
	suit.layout:reset( 510, 550, 10, 0 )
	if suit.Button("Previous", suit.layout:col(80,30)).hit then
		
	end
	
	if suit.Button("Skip", suit.layout:col()).hit then 
		
	end
	
	if suit.Button("Next", suit.layout:col()).hit then 
	end
	
end

--Tutorial callbacks for the state machine
fsm.onTutorial = function(self, event, from, to) drawState = drawTutorial end


