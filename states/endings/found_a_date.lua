-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.
local helpers = require 'helpers.scene_help'

local GS = require 'lib.gamestate'

local ctx = GS.new()

function ctx:draw()
	love.graphics.setColor(128,64,64)
	love.graphics.rectangle("fill", 000,620,1000,1000)
	love.graphics.setColor(255,255,255)
	love.graphics.printf("You found a date, congrats. You actually managed to win the game...", 50, 650, 620, 'center')
	love.graphics.setColor(64,0,0)
end

return ctx
