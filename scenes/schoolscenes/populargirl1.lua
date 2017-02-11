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
local wifu = core.PreFill(helpers.add_like, "popular_girl")

scene.events = {}
scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=0,y=0},{x=200,y=0},{x=200,y=300},{x=0,y=200}}, asdf)

-- Scene : Background, portrait, choices
-- Dpeth first
local ch = {}
C(ch, {text = "Ehrm...\nHello",
	requirements = {},
	consequence = helpers.change_state("a")})

C(ch, {text = "Did you know that a bagpipe was originally made from the whole skin of a dead sheep?",
	requirements = {},
	consequence = helpers.change_state("b")})

C(ch, {text = "nuqneH",
	requirements = {},
	consequence = helpers.change_state("c")})

C(ch, {text = "I like your face",
	requirements = {},
	consequence = helpers.change_state("d")})

S("start", {location = "school", text = "You arrive at school.", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "My name is Jules",
	requirements = {},
	consequence = helpers.change_state("aa")})

C(ch, {text = "I've been in your class for five years",
	requirements = {},
	consequence = helpers.change_state("ab")})

C(ch, {text = "Laugh nervously, then run away",
	requirements = {},
	consequence = helpers.change_state("abaa")})

S("a", {location = "school", text = "Do I know you?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "I really like that name.",
	requirements = {},
	consequence = helpers.change_state("aaa")})
C(ch, {text = "Can I call you Liv?",
	requirements = {},
	consequence = helpers.change_state("aab")})
C(ch, {text = "My aunt has that name as well.",
	requirements = {},
	consequence = helpers.change_state("aac")})

S("aa", {location = "school", text = "That's nice. My name is Olivia", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Sooo.... What’s your chess ELO rating?",
	requirements = {},
	consequence = helpers.change_state("aaaa")})

S("aaa", {location = "school", text = "That's... Nice?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Start crying",
	requirements = {},
	consequence = helpers.change_state("aaaaa")})
C(ch, {text = "Oh... I really like chess\nIt seems we're not compatible after all...\nDash away like Naruto",
	requirements = {},
	consequence = helpers.change_state("aaaab")})

S("aaaa", {location = "school", text = "My what? I don't do chess, that's for nerds?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("aaaaa", {location = "school", text = "What even...? I'm going away.", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("aaaab", {location = "school", text = "Bye then, weirdo.", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "I've been in your class for five years",
	requirements = {},
	consequence = helpers.change_state("aaba")})

S("aab", {location = "school", text = "No, I barely know you?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes...?",
	requirements = {},
	consequence = helpers.change_state("aabaa")})

S("aaba", {location = "school", text = "Oh, is that so?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Laugh nervously, then run away",
	requirements = {},
	consequence = helpers.change_state("aabaaa")})

S("aabaa", {location = "school", text = "I really don't recall you", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("aabaaa", {location = "school", text = "Bye then?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "I should go now.\nLaugh nervously, then run away",
	requirements = {},
	consequence = helpers.change_state("aaca")})

S("aac", {location = "school", text = "Ehrm... Okay?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("aaca", {location = "school", text = "Bye then?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes...?",
	requirements = {},
	consequence = helpers.change_state("aba")})

S("ab", {location = "school", text = "Oh, is that so?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Laugh nervously, then run away",
	requirements = {},
	consequence = helpers.change_state("abaa")})

S("aba", {location = "school", text = "I really don't recall you", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("abaa", {location = "school", text = "Bye then?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes, amazing, isn't it?",
	requirements = {},
	consequence = helpers.change_state("ba")})

S("b", {location = "school", text = "What...? Ew!", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
requirements = {},
consequence = helpers.change_state("exit")})

S("ba", {location = "school", text = "Go away, weirdo!", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Stutter in Klingon",
	requirements = {},
	consequence = helpers.change_state("ca")})
C(ch, {text = "Oh, erhm, hello.",
	requirements = {},
	consequence = helpers.change_state("a")})
C(ch, {text = "Take out your controller and press 'A'",
	requirements = {},
	consequence = helpers.change_state("cc")})

S("c", {location = "school", text = "What? Now in English?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("ca", {location = "school", text = "I'm gonna go now.", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "IT WORKED!",
	requirements = {},
	consequence = helpers.change_state("cca")})

S("cc", {location = "school", text = "What are you doing?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Shit I said that out loud",
	requirements = {},
	consequence = helpers.change_state("ccaa")})

S("cca", {location = "school", text = "Ehrm... okay?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Laugh nervously\nI'm an idiot",
	requirements = {},
	consequence = helpers.change_state("ccaaa")})
C(ch, {text = "Run away crying",
	requirements = {},
	consequence = helpers.change_state("ccaab")})

S("ccaa", {location = "school", text = "Yes you did. *starts laughing*", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})

S("ccaab", {location = "school", text = "Okay, bye then?", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "I'm not really used to talking to girls",
	requirements = {},
	consequence = helpers.change_state("ccaaaa")})

S("ccaaa", {location = "school", text = "So it seems\n*smiles*", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "That bad?",
	requirements = {},
	consequence = helpers.change_state("ccaaaaa")})

S("ccaaaa", {location = "school", text = "That's kind of noticable", girl = "popular_girl", choices = ch})

local ch = {}
C(ch, {text = "Oh, I should be going now. See you later!",
	requirements = {},
	consequence = helpers.change_state("good")})

S("ccaaaaa", {location = "school", text = "Yeah. *Bell rings*", girl = "popular_girl", choices = ch})


local good_ending = "good"
local bad_ending = "exit"

return scene