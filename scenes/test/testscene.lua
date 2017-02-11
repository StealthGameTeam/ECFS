local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
local S = core.PreFill(helpers.add_state, scene.states)
local function A(list, choice)
	list[#list+1] = choice

end
local con = core.PreFill(helpers.add_stat, "confidence")
local cool = core.PreFill(helpers.add_stat, "coolness")
local awk = core.PreFill(helpers.add_stat, "awkwardness")
local wifu = core.PreFill(helpers.add_like, "wifi_waifu")
-- Scene : Background, portrait, choices
local ch = {}
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.DoAll(wifu(5), core.PreFill(print, "To Stop state"), helpers.change_state("STOP"))})
A(ch, {text = "Uwa so Choice", requirements = {{"+", "coolness", 45}}, consequence = wifu(-1)})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "C")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "D")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "E")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})


S("START", {location = "bus", girl = "wifi_waifu", choices = ch})
S("STOP", {location = "bus", girl = "wifi_waifu", choices = {}})
return scene
