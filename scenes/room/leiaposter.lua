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
local wifu = core.PreFill(helpers.add_like, "leia")

scene.events = {}
--scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=0,y=0},{x=200,y=0},{x=200,y=300},{x=0,y=200}}, asdf)

-- Scene : Background, portrait, choices
-- Dpeth first

local ch = {}
C(ch, {text = "Good evening, Princess",
	requirements = {},
	consequence = helpers.change_state("1")})
C(ch, {text = "Hi there, Leia-chan",
	requirements = {},
	consequence = helpers.change_state("1")})
S("start", {location = "room", text = "You walk up to the poster.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "My day has been aweful",
	requirements = {},
	consequence = helpers.change_state("2")})
C(ch, {text = "My day has been okay.",
	requirements = {},
	consequence = helpers.change_state("2")})
S("1", {location = "room", text = "You know that you are talking to your poster?", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "Yes, tell me about it.",
	requirements = {},
	consequence = helpers.change_state("3")})
  C(ch, {text = "Ugh, really?",
  	requirements = {},
  	consequence = helpers.change_state("3")})
S("2", {location = "room", text = "The poster doesn't respond", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "Leia-chan, do you know anyone to go on a date with?",
	requirements = {},
	consequence = helpers.change_state("4")})
S("3", {location = "room", text = "No answer.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "Mmm... That's a good idea",
	requirements = {},
	consequence = helpers.change_state("5")})
S("4", {location = "room", text = "The poster doesn't respond.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "You know what? I'll go and do that.",
	requirements = {},
	consequence = helpers.change_state("6")})
S("5", {location = "room", text = "Paper can't talk", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "Thanks for the advice, Princess.",
	requirements = {},
	consequence = helpers.change_state("7")})
S("6", {location = "room", text = "Princess Leia remains unmoved.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "I'm going to sleep now, tomorrow will be a long day.",
	requirements = {},
	consequence = helpers.change_state("8")})
S("7", {location = "room", text = "You just thanked your poster.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "*caress Leia's face with a finger*",
	requirements = {},
	consequence = helpers.change_state("9")})
C(ch, {text = "*kiss the poster goodnight*",
	requirements = {},
	consequence = helpers.change_state("9")})
S("8", {location = "room", text = "Leia doesn't look tired at all.", girl = "leia", choices = ch})

local ch = {}
C(ch, {text = "Go to sleep",
	requirements = {},
	consequence = POPBACK})
S("9", {location = "room", text = "The poster doesn't respond.", girl = "leia", choices = ch})

return scene
