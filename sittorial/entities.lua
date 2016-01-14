ents = {}
ents.objects = {}
ents.objpath = "entities/"
local register = {}
local id = 0

function ents.Startup()
	register["box"] = love.filesystem.load( ents.objpath .. "box.lua" )
end

function ents.Derive(name)
	return love.filesystem.load( ents.objpath .. name .. ".lua" )()
end

function ents.Create(name, x, y)
	x = x or 0
	y = y or 0
	
	if register[name] then
		id = id + 1
		local ent = register[name]()
		ent:load()
		ent:setPos(x, y)
		ent.id = id
		ents.objects[#ents.objects + 1] = ent
		return ents.objects[#ents.objects]
	else
		print("Error: Entity " .. name .. " does not exist! Snap!")
		return false;
	end
end

function ents:update(dt)
	for i, ent in pairs(ents.objects) do
		if ent.update then
			ent:update(dt)
		end
	end
end

function ents:draw()
	for i, ent in pairs(ents.objects) do
		if ent.draw then
			ent:draw()
		end
	end
end