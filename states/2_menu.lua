local GS = require 'lib.gamestate'
local ctx = GS.new()
local INIT = require 'states.init'
function ctx:enter(from)
	ctx.from = from -- record previous state
	core.events = {}
	Gamestate.switch(INIT)
	print("MENU")
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
end

function ctx:draw()
	local width = love.graphics.getWidth()
	local height = love.graphics.getHeight()
	love.graphics.setColor(5, 5, 5,180)
	love.graphics.rectangle("fill",0,0,width,height)
	love.graphics.setColor(255,255,255,255)
	love.graphics.print("1. Start", 300,100)
end


return ctx