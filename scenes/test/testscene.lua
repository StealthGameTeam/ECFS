local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
local S = core.PreFill(helpers.add_state, scene.states)
local function A(list, choice)
	list[#list+1] = choice

end

-- Scene : Background, portrait, choices
local ch = {}
A(ch, {text = "Uwa so Choice", requirements = {{"+", "coolness", 45}}, consequence = core.PreFill(print, "A")})

S("START", {background = "chicken", foreground = "chickenchicken", choices = ch})
return scene
