suit = require "Libraries/SUIT"
require "interface"
require "button"
require "states"
require "tile"
require "conf"
require "combat"

function love.load()
	love.graphics.setNewFont(18)
	border = 10
	tileMap = {}
	tiles = {dirt, grass, water}
	playerX = 200
	playerY = 256
	enemyX = 536
	enemyY = 256
	playerCharacter = PlayerCharacter.new("Player The Great", 100, 10)
	enemyCharacter = EnemyCharacter.new("Enemy 1", 60, 8)
	--generateMap()
end

function love.draw()
	playerCharacter.draw(playerX,playerY)
	enemyCharacter.draw(enemyX,enemyY)
	--PlayerCharacter.draw(playerX,playerY)
	--tiles[3].draw(370,270)
	suit.draw()
end

function love.update( dt )
	--Player health bar
	suit.layout:reset(32,32,10,10)
	love.graphics.setColor(255,0,255)
	suit.Label(playerCharacter.getName(),{align= "left"}, suit.layout:row(256,30))
	suit.Label(playerCharacter.getHitpoints(),{align = "left"}, suit.layout:row(256,30))
	
	--Enemy health bar
	suit.layout:reset(love.graphics.getWidth()-256-32,32,10,10)
	love.graphics.setColor(255,0,255)
	suit.Label(enemyCharacter.getName(),{align= "right"}, suit.layout:row(256,30))
	suit.Label(enemyCharacter.getHitpoints(),{align = "right"}, suit.layout:row(256,30))
	

	--Buttons
	suit.layout:reset(100, love.graphics.getHeight()-62,56,10)
	if suit.Button("Attack",suit.layout:col(128,30)).hit then
		print("Cyka blyat! "..1/dt)
		enemyCharacter.setHitpoints(enemyCharacter.getHitpoints()-playerCharacter.getPower())
		playerCharacter.setHitpoints(playerCharacter.getHitpoints()-enemyCharacter.getPower())
	end
	
	if suit.Button("Item",suit.layout:col()).hit then
		print("Cto \"Item\"?")
	end
	
	if suit.Button("Run",suit.layout:col()).hit then
		print("Nyet!!")
	end
	
	if enemyCharacter.getHitpoints() <= 0 then
		suit.layout:reset(0,0,0,0)
		suit.Label("A winner is you!",{align= "center"}, suit.layout:row(800,600))
	end
	
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