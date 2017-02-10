-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.

local GS = require 'lib.gamestate'

local ctx = GS.new()
function ctx:enter(from)
	print("ENTERING STAGE")
end

function ctx:leave()

end
local function get_options()

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