-- This state is responsible for setting the game up, based on the current loaded gamestate. It ensures all data for all objects is properly loaded.
local helpers = require 'helpers.scene_help'

local GS = require 'lib.gamestate'
local fun = require 'lib.fun'
local ctx = GS.new()
local options = {}

local DRAWCLICKS = true
COUNTER = 0

local function getText()
	return require ('scenes.betweenDayParts.'..DAY.."-"..DAYPART).text
end

local function getOptions()
	return require ('scenes.betweenDayParts.'..DAY.."-"..DAYPART).options
end

function ready_between()
	for k,v in ipairs(getOptions()) do
		core.keyboard.whenDown("SCN", "SCN", tostring(k), v.consequence)
		core.add_click({{x=0,y=675+k*50},{x=1000,y=675+k*50},{x=1000,y=725+k*50},{x=0,y=725+k*50}},v.consequence)

	end
end

function gotoStage(stagename)
	CURRENTSTATE = TO
	Gamestate.push(require 'states.stage')
end

local function stage()
	Gamestate.push(require 'states.stage')
end

local function nextStage()
	stage()
	DAYPART = DAYPART + 1
	if DAYPART == 6 then
		DAYPART = 1
		DAY = DAY + 1
	end
end

function ctx:enter(from)
	print("ENTERING STAGE")
	nextStage()
end

function ctx:leave()

end

local i = 0
local function print_option(opt)
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
	love.graphics.setColor(128,64,64)
	love.graphics.rectangle("fill", 000,620,1000,1000)
	love.graphics.setColor(255,255,255)
	love.graphics.printf(SCENES[CURRENTSCENE].states[CURRENTSTATE].text, 50, 650, 620, 'center')
	love.graphics.setColor(64,0,0)
	
	for j=0, 4 do
	    love.graphics.rectangle("fill", 0,725+j*50, 720, 50, 10,10 )
	end
	love.graphics.setColor(255,255,255)
	for k,v in ipairs(getOptions()) do
		print_option(v)
	end



end

return ctx
