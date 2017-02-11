local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
scene.start = "START"
local S = core.PreFill(helpers.add_state, scene.states)

-- Add choice to list
local  A = helpers.addChoice

function asdf() 
	print("AFDDSF")
end
local con = core.PreFill(helpers.add_stat, "confidence")
local cool = core.PreFill(helpers.add_stat, "coolness")
local awk = core.PreFill(helpers.add_stat, "awkwardness")
local wifu = core.PreFill(helpers.add_like, "wifi_waifu")

scene.events = {}
scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=0,y=0},{x=200,y=0},{x=200,y=300},{x=0,y=200}}, asdf)

-- Scene : Background, portrait, choices
local ch = {}

A(ch, {text = "Say 'hi'",
	requirements = {{"+", "coolness", 45}},
	consequence = core.DoAll(wifu(5), helpers.change_state("1"))})
A(ch, {text = "Look at your shoes",
	requirements = {{"+", "coolness", 45}},
		consequence = core.DoAll(wifu(-5), helpers.change_state("2"))})
A(ch, {text = "Are you an angel?",
	requirements = {{"+", "coolness", 45}},
		consequence = core.DoAll(wifu(-20), helpers.change_state("2"))})
A(ch, {text = "You smell like my grandmother...\n I love my grandmother.",
	requirements = {{"+", "coolness", 45}},
	consequence = core.DoAll(wifu(-20), helpers.change_state("3"))})



S("START", {location = "bus", text = "You see a girl at a bus stop. She looks kind of cute..", girl = "wifi_waifu", choices = ch})
S("STOP", {location = "bus",  text = "BLA BLA BLA", girl = "asdf", choices = {}})
local AS =  core.After(S, helpers.addSay)

S("1", {location = "bus",  text = "She looks funny at you.", girl = "wifi_waifu", choices = {}})
S("2", {location = "bus",  text = "She walks off.", girl = "nil", choices = {}})
S("3", {location = "bus",  text = "She walks off angrily.", girl = "nil", choices = {}})

return scene
