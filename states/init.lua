-- This file is responsible for the normal main gameloop. Some games may have more than one gameloop if the loops are too different.

local GS = require 'lib.gamestate'

local ctx = GS.new()

function ctx:enter(from)
	ctx.from = from -- record previous state
	local STAGESKIP = require 'states.stageskip'
	core.keyboard.whenDown("PAUSE", "PAUSE", "space", core.PreFill(Gamestate.switch, STAGESKIP))
	GAME =
	{
		awkwardness = 80, confidence = 20, coolness = 20,
		wifi_waifu = 10
	}
	GIRLS = require 'girls'
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
