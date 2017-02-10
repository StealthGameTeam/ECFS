local helpers = require 'helpers.scene_help'
local func = 
local scene = {}
scene.states = {}
local S = core.PreFill(helpers.add_state, scene.states)


-- Scene : Background, portrait, choices
S("START", {background = "chicken", foreground = "chickenchicken", choices = {}})




return scene
