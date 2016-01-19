local BGexplosions = {}
local image = love.graphics.newImage ("textures/explosion.png")

function startBGExplosion(x,y,magn, t)
	table.insert(BGexplosion, (x = x, y = y, magn = magn, t = 0))
end

function drawBGExplosions()
	for k, ex in pairs(BGexplosions) do
		local sx = (ex.t/(4*ex.magn))
		local sy = (ex.t/(4*ex.magn))
		love.graphics.setColor(255,255,255,180*(1-(ex.t/(4*ex.magn))))
		local ssx = 0.5 + (sx/2)
		local ssy = sy

		love.graphics.draw( image, ex.x - (256*ssx*0.5), ex.y - (256*ssy), 0, ssx, ssy, 0, 0)

		love.graphics.setColor(255,255,255,180*(1-(ex.t/(4*ex.magn))))
		love.graphics.circle( "fill", ex.x, ex.y, 2048*(ex.t/(4*ex.magn)), 32 )
	end
end

function updateBGExplosions(dt)
	for k, ex in pairs (BGexplosions) do
		ex.t = ex.t + dt
		if ex.t > 4*ex.magn then
			table.remove(BGexplosions, k)
		end
	end
end
