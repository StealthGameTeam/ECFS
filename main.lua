Gamestate = require 'lib.gamestate'

CURRENTSCENE = "momscreen"
CURRENTSTATE = "START"
--print = function() end
pprint = require 'lib.pprint'

require 'helpers.core_funcs'
require 'inputoutput.keyboard_input'
require 'inputoutput.click'
function POPBACK ()
	IGNORE_THIS_ROUND = true
	core.events = {}
	core.clicks = {}
	print("POP")
	Gamestate.pop()
	ready_between()
	
end
SCENES = {momscreen = require 'scenes.schoolscenes.momcall',
	test = require 'scenes.test.testscene',
	populargirl1 = require 'scenes.schoolscenes.populargirl1',
	busstopgirlday1 = require 'scenes.schoolscenes.busstopgirlday1',
	librarygirlday1 = require 'scenes.schoolscenes.librarygirlday1',
	momscreen = require 'scenes.room.room'
}
GIRLS = {}
GAME = {}
DAY = 1
DAYPART = 3
DRAWSCENE = function() end
DRAWGIRL  = function() end


function love.load()
    Gamestate.registerEvents()
 	Gamestate.switch(require 'states.1_pre_game')
end
function love.draw()
	love.graphics.print(love.timer.getFPS(), 10,10)
	love.graphics.print(collectgarbage('count'), 50,10)
end

function reverse(map)
	return fun.foldl(function(acc, x) return fun.op.insert(acc, map[x], x) end, {},  fun.op.keys(map))
end
function love.update(dt)
	--- Events


end
