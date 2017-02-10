-- This file is responsible for the normal main gameloop. Some games may have more than one gameloop if the loops are too different.

local GS = require 'lib.gamestate'

-- {{render = function(), chooser = function(), executer = function()}}
local ctx = GS.new()


function ctx:enter(from)

end

function ctx:leave()
  
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

end

return ctx
