-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.
local helpers = require 'helpers.scene_help'

local GS = require 'lib.gamestate'
local fun = require 'lib.fun'
local ctx = GS.new()
local function mystate()

	return SCENES[CURRENTSCENE]
end

local function accept(choice)
	for k,v in pairs(choice.requirements) do
		if v[1] == "+" then
			print(v[2] .. " HIGHER THAN " .. v[3])
			return GAME[v[2]] > v[3]
		elseif v[1] == "=" then
			print(v[2] .. " EQAL TO " .. v[3])
			return GAME[v[2]] == v[3]
		elseif v[1] == "-" then
			print(v[2] .. " LOWER THAN " .. v[3])
			return GAME[v[2]] < v[3]
		end
	end
	print("UNKNOWN OPERATOR")
	return false
end
local function get_options()

 	local currentstate = mystate().states[CURRENTSTATE]
 	local tbl = {}
 	fun.each(core.PreFill(fun.op.insertI, tbl), fun.grep(accept, currentstate.choices))
 	return tbl

end
function ctx:enter(from)
	print("ENTERING STAGE")
	pprint(get_options())

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
