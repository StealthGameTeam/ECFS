local GS = require 'lib.gamestate'
local ctx = GS.new()
local INIT = require 'states.init'
HP = 100
TURN = false
function ctx:enter(from)
	core.events = {}
	ctx.from = from -- record previous state
	print("MENU")
	HP = 100
	TURN = false
end
function ctx:leave()
  	core.events = {}
end
function ctx:update(dt)
  	for k,v in pairs(core.events) do
		for l,w in pairs(v) do
			for m,x in ipairs(w) do
				x(dt)
			end
		end
	end
	if TURN then
		-- ...
		print("A")
	end
end
local i = 0
local function print_option(opt)
	i=i+1
	love.graphics.printf(i..": "..opt.text, 50, 690 + i * 50,  620, 'center' )
end
function ctx:draw()
	scale()

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
			love.graphics.polygon("line", unpack(line))
		end
	end
	love.graphics.setColor(128,64,64)
	love.graphics.rectangle("fill", 000,620,1000,1000)
	love.graphics.setColor(255,255,255)
	love.graphics.printf("You're in a fight with LARP-girl. Show your best!", 50, 650, 620, 'center')
	love.graphics.setColor(64,0,0)
	
	for j=0, 4 do
	    love.graphics.rectangle("fill", 0,725+j*50, 720, 50, 10,10 )
	end
	love.graphics.setColor(255,255,255)
	for k,v in ipairs({{text="attack"},{text="dodge"}}) do
		print_option(v)
	end
end


return ctx