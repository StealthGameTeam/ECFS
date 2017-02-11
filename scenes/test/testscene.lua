local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
scene.start = "START"
local S = core.PreFill(helpers.add_state, scene.states)

-- Add choice to list
local  A = helpers.addChoice


local con = core.PreFill(helpers.add_stat, "confidence")
local cool = core.PreFill(helpers.add_stat, "coolness")
local awk = core.PreFill(helpers.add_stat, "awkwardness")
local wifu = core.PreFill(helpers.add_like, "wifi_waifu")


-- Scene : Background, portrait, choices
local ch = {}
A(ch, {text = "Uwa so first Choice", requirements = {{"+", "coolness", 45}}, consequence = core.DoAll(wifu(5), helpers.change_state("STOP"))})
A(ch, {text = "Uwa so Choice", requirements = {{"+", "coolness", 45}}, consequence = wifu(-1)})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so third Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "C")})
A(ch, {text = "Uwa so fourth Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "D")})
A(ch, {text = "Uwa so fifth Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "E")})
A(ch, {text = "Uwa so sixth Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so seventh Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})


S("START", {location = "bus", text = "Test Test test", girl = "wifi_waifu", choices = ch})
S("STOP", {location = "bus",  text = "BLA BLA BLA", girl = "asdf", choices = {}})
return scene
