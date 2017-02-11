local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
scene.start = "start"
local S = core.PreFill(helpers.add_state, scene.states)

-- Add choice to list
local  C = helpers.addChoice

function asdf()
	print("AFDDSF")
end
local con = core.PreFill(helpers.add_stat, "confidence")
local cool = core.PreFill(helpers.add_stat, "coolness")
local awk = core.PreFill(helpers.add_stat, "awkwardness")
local wifu = core.PreFill(helpers.add_like, "busstop_girl")

scene.events = {}
--scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=0,y=0},{x=200,y=0},{x=200,y=300},{x=0,y=200}}, asdf)

-- Scene : Background, portrait, choices
-- Dpeth first

local ch = {}
C(ch, {text = "Hi, I'm here to talk to The Girls",
	requirements = {},
	consequence = helpers.change_state("a")})
C(ch, {text = "Did you know the king of hearts is the only king without a moustache.",
	requirements = {},
	consequence = helpers.change_state("b")})
C(ch, {text = "*start looking at books*",
	requirements = {},
	consequence = helpers.change_state("c")})
C(ch, {text = "How do I do the dating thing",
	requirements = {},
	consequence = helpers.change_state("d")})
S("start", {location = "bus", text = "You arrive at the library.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("aa")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("ab")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("ac")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("ad")})
S("a", {location = "bus", text = "*laughs*\nMaybe a library is not the best place for that.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("ba")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("bb")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("bc")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("bd")})
S("b", {location = "bus", text = "No, I didn't know that yet.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("ca")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("cb")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("cc")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("cd")})
S("c", {location = "bus", text = "Can I help you?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("da")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("db")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("dc")})
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("dd")})
S("d", {location = "bus", text = "Excuse me?", girl = "busstop_girl", choices = ch})
