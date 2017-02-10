local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
local S = core.PreFill(helpers.add_state, scene.states)
local function A(list, choice)
	list[#list+1] = choice

end

-- Scene : Background, portrait, choices
local ch = {}
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.DoAll(core.PreFill(print, "To Stop state"), helpers.change_state("STOP"))})
A(ch, {text = "Uwa so Choice", requirements = {{"+", "coolness", 60}}, consequence = core.PreFill(print, "A")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "C")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "D")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "E")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})
A(ch, {text = "Uwa so second Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "B")})


S("START", {background = "chicken", foreground = "chickenchicken", choices = ch})
S("STOP", {background = "chicken", foreground = "chickenchicken", choices = {}})
return scene
