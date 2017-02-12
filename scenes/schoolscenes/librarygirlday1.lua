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
local wifu = core.PreFill(helpers.add_like, "library_girl")

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
S("start", {location = "library", text = "You arrive at the library.", girl = "library_girl", choices = ch})

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
S("a", {location = "library", text = "*laughs*\nMaybe a library is not the best place for that.", girl = "library_girl", choices = ch})

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
S("b", {location = "library", text = "No, I didn't know that yet.", girl = "library_girl", choices = ch})

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
S("c", {location = "library", text = "Can I help you?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I'm desperate and I need help",
	requirements = {},
	consequence = helpers.change_state("da")})
C(ch, {text = "I MEAN LIKE AN AGENDA IM TOTALLY NOT TALKING ABOUT DATING GIRLS",
	requirements = {},
	consequence = helpers.change_state("db")})
S("d", {location = "library", text = "Excuse me?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I'm desperate and I need help",
	requirements = {},
	consequence = helpers.change_state("da")})

S("da", {location = "library", text = "NULL", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "No that's acne",
	requirements = {},
	consequence = helpers.change_state("dba")})
S("db", {location = "library", text = "*laughs*\nAre you sure? You're all flustered!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*awkwardly leave*",
	requirements = {},
	consequence = helpers.change_state("dbaa")})
C(ch, {text = "I would like the book please.",
	requirements = {},
	consequence = helpers.change_state("dbab")})
S("dba", {location = "library", text = "We have some great books about that.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("dbaa", {location = "library", text = "Bye then?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*SHIIIIIIT THIS IS NOT WHAT I WANT*",
	requirements = {},
	consequence = helpers.change_state("dbaba")})
S("dbab", {location = "library", text = "Sure, wait a moment\n*smiles*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
C(ch, {text = "*stay and awkwardly stand around*",
	requirements = {},
	consequence = helpers.change_state("dbabab")})
S("dbaba", {location = "library", text = "*leaves for a moment*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Ah, uhm, thank you.",
	requirements = {},
	consequence = helpers.change_state("dbababa")})
S("dbabab", {location = "library", text = "Ah, found it! Here it is. *smiles*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*awkwardly smile back*",
	requirements = {},
	consequence = helpers.change_state("dbababaa")})
S("dbababa", {location = "library", text = "No problemo, this is my job *smile widens*", girl = "library_girl", choices = ch})


local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("dbababaaa")})
C(ch, {text = "Ah, uhm, thank you.",
	requirements = {},
	consequence = helpers.change_state("dbababaab")})
S("dbababaa", {location = "library", text = "Is that everything?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("dbababaaaa")})
S("dbababaaa", {location = "library", text = "NULL", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Sure",
	requirements = {},
	consequence = helpers.change_state("dbababaaba")})
S("dbababaab", {location = "library", text = "Okay then, let's check out the book.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "NULL",
	requirements = {},
	consequence = helpers.change_state("null")})
S("dbababaaba", {location = "library", text = "There ya go. ", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Ah, uhm, thank you.",
	requirements = {},
	consequence = helpers.change_state("dbababaaaaa")})
S("dbababaaaa", {location = "library", text = "No problemo, this is my job *smile widens*", girl = "library_girl", choices = ch})

return scene