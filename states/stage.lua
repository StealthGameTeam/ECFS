-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.
local helpers = require 'helpers.scene_help'

local GS = require 'lib.gamestate'
local fun = require 'lib.fun'
local ctx = GS.new()
local options = {}
local getGB = require 'render.background.find_background'
local getGIRL= require 'render.girls.draw_girl'
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
	core.events = {}
 	local currentstate = mystate().states[CURRENTSTATE]
 	local tbl = {}
 	fun.each(core.PreFill(fun.op.insertI, tbl), fun.take(5,fun.grep(accept, currentstate.choices)))
 	for k,v in ipairs(tbl) do
		core.keyboard.whenDown("SCN", "SCN", tostring(k), core.DoAll(v.consequence, get_options))
 	end
 	options = tbl
 	DRAWSCENE =  getGB(currentstate.location)
 	DRAWGIRL =  getGIRL(currentstate.location)

 	return tbl
end

function ctx:enter(from)
	print("ENTERING STAGE")
	get_options()
end

function ctx:leave()

end

local i = 0
function print_option(opt)
	i=i+1
	love.graphics.print(i..": "..opt.text, 200, 600+i*20 )
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
	i=0
	DRAWSCENE()
	DRAWGIRL()
	fun.each(print_option, options)

end

return ctx
