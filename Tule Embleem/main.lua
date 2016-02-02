suit = require "Libraries/SUIT"
require "menu"

gameStates = {["main menu"] = mainMenu, ["configuration menu"]=confMenu, 
["quit game"] = quitGame, ["new game"] = newGame, ["load game menu"]= loadGame}
currentGameState = "main menu"

function love.load()
end

function love.draw()
  --Draw the current game state SUIT instance
  gameStates[currentGameState]:draw()

  if currentGameState == "main menu" then 
    drawMainMenu()
  end

  if currentGameState == "configuration menu" then
    drawConfMenu()
  end
  suit.draw()

end

function love.update( dt )
	mouseX = love.mouse.getX( )
	mouseY = love.mouse.getY( )

  if currentGameState == "quit game" then
    love.event.push("quit")
  end

end

function love.focus( bool )
end

function love.keypressed( key, unicode )
	suit.keypressed(key)
  if key == "1" then
    currentGameState = "main menu"
  end
  if key == "2" then
    currentGameState = "configuration menu"
  end
  if key == "escape" then
    currentGameState = "quit game"
  end
end

function love.keyreleased( key, unicode )
end

function love.mousepressed( x, y, button )
  print(currentGameState)
  buttonHit()
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