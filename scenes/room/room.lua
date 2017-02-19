local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
scene.start = "START"
local S = core.PreFill(helpers.add_state, scene.states)

-- Add choice to list
local  A = helpers.addChoice

function asdf(str) 
	return function()
		print("A")
		--interruptMusicToPlayFail("assets/interrupt.mp3")()
		helpers.change_state(str)()
		get_options()
	end
end
local con = core.PreFill(helpers.add_stat, "confidence")
local cool = core.PreFill(helpers.add_stat, "coolness")
local awk = core.PreFill(helpers.add_stat, "awkwardness")
local wifu = core.PreFill(helpers.add_like, "wifi_waifu")

scene.events = {}
scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=36,y=54},{x=179,y=54},{x=179,y=289},{x=54,y=289}}, core.DoOnce(asdf("leia0")))

-- Scene : Background, portrait, choices
local ch = {}

A(ch, {text = "Go to bed",
	requirements = {},
	consequence = helpers.change_state("notice")})
S("START", {location = "room", text = "You're in your room...", girl = "nil", choices = ch})
local ch = {}
A(ch, {text = "Go to bed",
	requirements = {},
	consequence = core.PreFill(Gamestate.switch, require 'states.endings.no_date')})
S("notice", {location = "room", text = "You notice the poster of Leia on your wall.", girl = "nil", choices = ch})

local ch = {}
A(ch, {text = "Sigh and go to bed.",
	requirements = {},
	consequence = core.PreFill(Gamestate.switch, require 'states.endings.no_date')})
A(ch, {text = "Start a conversation with Leia",
	requirements = {},
	consequence = helpers.change_scene("leiaposter")})
S("leia0", {location = "room", text = "That's a nice poster...", girl = "nil", choices = ch})


return scene
