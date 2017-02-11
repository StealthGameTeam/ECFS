-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.
local helpers = require 'helpers.scene_help'

local GS = require 'lib.gamestate'
local fun = require 'lib.fun'
local ctx = GS.new()
local options = {}
local getGB = require 'render.background.find_background'
local getGIRL= require 'render.girls.draw_girl'
local DRAWCLICKS = true
COUNTER = 0
OPTION_USED = {}

function asdf()
	print("AFDDSF")
end

local function track_OPTION_use(option)
	COUNTER = COUNTER + 1
	OPTION_USED[option..":"..SCENES[CURRENTSCENE].states[CURRENTSTATE].girl] = COUNTER
end
local function accept(choice)
	if OPTION_USED[choice.text..":"..SCENES[CURRENTSCENE].states[CURRENTSTATE].girl] then
		return false
	end
	if #choice.requirements == 0 then
		return true
	end
	for k,v in pairs(choice.requirements) do
		if v[1] == "+" then
			if not (GAME[v[2]] > v[3]) then
				return false
			end
		elseif v[1] == "=" then
			if not (GAME[v[2]] == v[3]) then
				return false
			end
		elseif v[1] == "-" then
			if not (GAME[v[2]] < v[3]) then
				return false
			end
		else
			print("UNKNOWN OPERATOR")
		end
	end
	return true
end

function get_options()
	core.events = {}
	core.clicks = {}
 	local currentstate = SCENES[CURRENTSCENE].states[CURRENTSTATE]
 	local tbl = {}
 	fun.each(core.PreFill(fun.op.insertI, tbl), fun.take(4,fun.grep(accept, currentstate.choices)))
 	for k,v in ipairs(tbl) do
 		local func = core.DoAll(core.PreFill(track_OPTION_use, v.text), v.consequence, get_options)
		core.keyboard.whenDown("SCN", "SCN", tostring(k), func)
		core.add_click({{x=0,y=675+k*50},{x=1000,y=675+k*50},{x=1000,y=725+k*50},{x=0,y=725+k*50}},func)
 	end
 	for k,v in ipairs(SCENES[CURRENTSCENE].events) do
 		v()
 	end
 	options = tbl
 	DRAWSCENE =  getGB(currentstate.location)
 	DRAWGIRL =  getGIRL(currentstate.girl)
 	return tbl
end

function ctx:enter(from)
	print("ENTERING STAGE")
	get_options()
	helpers.change_scene("test")()

end

function ctx:leave()

end

local i = 0
function print_option(opt)
	i=i+1
	love.graphics.printf(i..": "..opt.text, 50, 690+i*50,  620, 'center' )
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
	love.graphics.setColor(128,128,128)
	love.graphics.rectangle("fill", 000,620,1000,1000)
	love.graphics.setColor(255,255,255)
	love.graphics.printf(SCENES[CURRENTSCENE].states[CURRENTSTATE].text, 50, 650, 620, 'center')
	love.graphics.setColor(64,64,64)
	love.graphics.rectangle("fill", 000,725,1000,1000)
	love.graphics.setColor(255,255,255)
	fun.each(print_option, options)
	for j=0, 5 do
		love.graphics.line(0,725+j*50, 1000,725+j*50)
	end
	if DRAWCLICKS then
		for k,v in ipairs(core.clicks) do
			local poly = core.cc[k]
			local line = {}

			for l,w in pairs(poly) do
				line[#line+1] = w.x
				line[#line+1] = w.y
			end
			love.graphics.polygon("line",unpack(line))
		end
	end

end

return ctx
