Gamestate = require 'lib.gamestate'
ANDROID = true
CURRENTSCENE = "momscreen"
CURRENTSTATE = "PHONE"
--print = function() end
pprint = require 'lib.pprint'
require 'lib.TEsound'
local SS = {}
SS[#SS+1] = "assets/batfail.wav"
SS[#SS+1] = "assets/hedfail.wav"
SS[#SS+1] = "assets/ltrfail.wav"
SS[#SS+1] ="assets/pirfail1.wav"
SS[#SS+1] = "assets/pirfail2.wav"
SS[#SS+1] ="assets/whifail.wav"
MUSIC = TEsound.playLooping("assets/battle music.wav", {"music"})
interruptMusicToPlayFail = function(name)
	return function()
		TEsound.volume("music", 0)
		TEsound.stop("EFF")
		print(name)
		TEsound.play(name, {"EFF"}, 1, 1, core.PreFill(TEsound.volume, "music", 1))
	end
end
local FS = 1
RANDOMFAIL = function()
	FS = (FS%(#SS)) + 1
	return interruptMusicToPlayFail(SS[FS])
end
require 'helpers.core_funcs'
require 'inputoutput.keyboard_input'
require 'inputoutput.click'
function POPBACK ()
	
	IGNORE_THIS_ROUND = true
	core.events = {}
	core.clicks = {}
	print("POP")
	RANDOMFAIL()()
	Gamestate.pop()
	ready_between()
	
end
SCENES = {momscreen = require 'scenes.schoolscenes.momcall',
	test = require 'scenes.test.testscene',
	populargirl1 = require 'scenes.schoolscenes.populargirl1',
	busstopgirlday1 = require 'scenes.schoolscenes.busstopgirlday1',
	librarygirlday1 = require 'scenes.schoolscenes.librarygirlday1',
	room = require 'scenes.room.room',
	leiaposter = require 'scenes.room.leiaposter'
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
	TEsound.cleanup()

end
