-- This file is responsible for the normal main gameloop. Some games may have more than one gameloop if the loops are too different.

local GS = require 'lib.gamestate'

local ctx = GS.new()

function ctx:enter(from)
	ctx.from = from -- record previous state
	local STAGESKIP = require 'states.stage'
	core.keyboard.whenDown("PAUSE", "PAUSE", "space", core.PreFill(Gamestate.switch, STAGESKIP))
	GAME = 
	{
		awkwardness = 50, confidence = 50, coolness = 50,
		wifi_waifu = 10
	}
	GIRLS = 
	{
		wifi_waifu = 
		{
			show = {like = {min = 0,  max = 100}, awkwardness = {min = 0,max = 50}, confidence = {min = 0, max = 10}, coolness = {0, 100}},
			talk = {like = {min = 0,  max =  50}, awkwardness = {min = 0,max = 50}, confidence = {min = 0, max = 10}, coolness = {30, 60}},
			date = {like = {min = 60, max =  50}, awkwardness = {min = 0,max = 50}, confidence = {min = 0, max =  5}, coolness = {30, 60}},
			interests = {"internet", "porn sites", "finding shortest paths"}
		}
	}
end

function ctx:leave()
  	core.events = {}
end

function ctx:update(dt)
    -- This looks like lots of loops, but it really isn't .
    for k,v in pairs(core.events) do
      for l,w in pairs(v) do
        for m,x in ipairs(w) do
          x(dt)
        end
      end
    end
end

function ctx:draw()
	love.graphics.print("Press Space to go to ...", 300,100)


end

return ctx
