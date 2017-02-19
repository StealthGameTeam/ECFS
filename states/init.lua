-- This file is responsible for the normal main gameloop. Some games may have more than one gameloop if the loops are too different.

local GS = require 'lib.gamestate'

local ctx = GS.new()
local img = nil
local l_img = nil
function ctx:enter(from)
	img = love.graphics.newImage("assets/backgrounds/bedroom.PNG")
	l_img = love.graphics.newImage("assets/girls/leiacut.PNG")
	ctx.from = from -- record previous state
	local STAGESKIP = require 'states.stageskip'
	core.keyboard.whenDown("PAUSE", "PAUSE", "space", core.PreFill(Gamestate.switch, STAGESKIP))
	
	core.add_click({{x=0,y=0}, {x=2000,y=0}, {x=2000,y=2000}, {x=0,y=2000}}, core.PreFill(Gamestate.switch, STAGESKIP))
	
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
	scale()

	-- love.graphics.setColor(255,0,0)
	-- love.graphics.polygon('fill', convert({{x=100,y=100}, {x=200,y=100}, {x=200,y=200}, {x=100,y=200}}))
	love.graphics.setColor(128,128,128)
	love.graphics.draw(img,0,0,0,1.15,1.15)
	love.graphics.setColor(158,158,158)
	love.graphics.draw(l_img,200,200,0.1,0.7,0.7)
	love.graphics.setColor(255,255,255)
	
	love.graphics.push()
	love.graphics.setFont(love.graphics.newFont(64))
	love.graphics.printf("A Bit of Love",  50,100,620, "center")
  love.graphics.setFont(love.graphics.newFont(32))
	love.graphics.printf("Press Space to start", 50,800,620, "center")
	love.graphics.pop()
	love.graphics.setFont(love.graphics.newFont(14))
end

return ctx
