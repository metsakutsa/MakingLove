suit = require "Libraries/SUIT"

--Here we have the most important thing - game state. When you create a new menu, in-game window, etc, add it here. Use the same name for state and the suit itself

local confMenu = suit.new()
local mainMenu = suit.new()
local gameStates = {["mainMenu"] = mainMenu, ["confMenu"]=confMenu}
local currentGameState = "mainMenu"

function love.load()
end

function love.draw()
    --FSM
    gameStates[currentGameState]:draw()

    --BUTTON checker; Tests what buttons are pressed. This is bad and needs to be changed.
    if mainMenuButton.hit then
      currentGameState = "mainMenu"
    end
    if confButton.hit then
      currentGameState = "confMenu"
    end
end

function love.update( dt )
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )
    -- put the layout origin at position (100,100)
    -- cells will grow down and to the right of the origin
    -- note the colon syntax
    mainMenu.layout:reset(200,100,10,10)

    mainMenu.theme.color = {
    normal  = {bg = { 0, 66, 66}, fg = {188,188,188}},
    hovered = {bg = { 50,153,187}, fg = {255,255,255}},
    active  = {bg = {255,153,  0}, fg = {225,225,225}}
    }

    newGameButton = mainMenu:Button("New game", mainMenu.layout:row(400,100))
    loadGameButton = mainMenu:Button("Load game", mainMenu.layout:row())
    confButton = mainMenu:Button("Configuration", mainMenu.layout:row())

    confMenu.layout:reset(200,100,10,10)
    somethingButton = confMenu:Button("Something", confMenu.layout:row(400,100))
    mainMenuButton = confMenu:Button("Main menu", confMenu.layout:row())

end

function love.focus( bool )
end

function love.keypressed( key, unicode )
	suit.keypressed(key)
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
end

function love.mousereleased( x, y, button )
end

function love.quit()
end

-- forward keyboard events
function love.textinput(t)
    suit.textinput(t)
end

-- Collision detection function.
-- Returns true if two boxes overlap, false if they don't
-- x1,y1 are the left-top coords of the first box, while w1,h1 are its width and height
-- x2,y2,w2 & h2 are the same, but for the second box
function CheckCollision( x1, y1, w1, h1, x2, y2, w2, h2 )
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

-- Mouse collision detection function.
-- Returns true if mouse is inside a box
-- x,y are the left-top coords of the box, while w,h are its width and height
-- mx,my are the mouse coordinates
function CheckMouseCollision( mx, my, x, y, w, h )
  return mx < x+w and
         x < mx and
         my < y+h and
         y < my
end