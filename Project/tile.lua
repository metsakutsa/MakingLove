Tile = {}

tileWidth = 32
tileHeight = 32

function Tile.new(terrain, walkable, interactive)
	local self = {}
	local terrain = terrain
	local walkable = walkable
	local interactive = interactive

	function self.draw(x,y)
		if terrain == "grass" then
			love.graphics.setColor(0, 255, 0)
		elseif terrain == "water" then
			love.graphics.setColor(0,0,255)
		elseif terrain == "dirt" then
			love.graphics.setColor(220,130,20)
		end
		love.graphics.rectangle("fill", x, y, tileWidth, tileHeight)
	end

	return self
end

dirt = Tile.new("dirt", true, false)
grass = Tile.new("grass", true, false)
water = Tile.new("water", true, false)

