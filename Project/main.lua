suit = require "Libraries/SUIT"
require "menu"
require "button"
require "states"
require "tile"
require "conf"

border = 10
tileMap = {}

function love.load()
	tiles = {dirt, grass, water}
	generateMap()
end

function love.draw()
    --tiles[3].draw(370,270)
	
	suit.draw()
end

function love.update( dt )
	suit.layout:reset(100,100,10,10)
end

function love.focus( bool )
end

function love.keypressed( key, unicode )
end

function love.keyreleased( key, unicode )
end

function  love.mousepressed( x, y, button, istouch )
end

-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
end

function generateMap()
	for column = border, love.graphics.getHeight() - tileHeight - border, tileHeight do
		for row = border, love.graphics.getWidth() - tileWidth - border, tileWidth do
			table.insert(tileMap, tiles[math.random(#tiles)])
		end
	end
end