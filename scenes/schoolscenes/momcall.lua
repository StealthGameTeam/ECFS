local helpers = require 'helpers.scene_help'
local scene = {}
scene.states = {}
scene.start = "PHONE"
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

A(ch, {text = "Pick up phone",
	requirements = {},
	consequence = helpers.change_state("1")})

S("PHONE", {location = "school", text = "Phone: 'rings'", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "...",
	requirements = {},
	consequence = helpers.change_state("2")})
S("1", {location = "school",  text = "Me: Hello mom.", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "What family Dinner?",
	requirements = {},
	consequence = helpers.change_state("3A")})

A(ch, {text = "I remember..",
	requirements = {},
	consequence = helpers.change_state("3B")})
S("2", {location = "school",  text = "Hi Jules!\n I wanted to remind you of the family dinner we have in a week.", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "Sorry...",
	requirements = {},
	consequence = core.DoAll(con(-10),helpers.change_state("4"))})
S("3A", {location = "school",  text = "I told you ten times already.", girl = "wifi_waifu", choices = ch})
local ch = {}
A(ch, {text = "...",
	requirements = {},
	consequence = helpers.change_state("4")})
S("3B", {location = "school",  text = "... That's good.", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "I don't have a girlfriend.",
	requirements = {},
	consequence = core.DoAll(con(-10), awk(10), cool(-10), helpers.change_state("5A"))})
A(ch, {text = "I don't think she can come over that day.",
	requirements = {},
	consequence = core.DoAll(con(10), awk(10), helpers.change_state("5B"))})
A(ch, {text = "Yes of course I am.",
	requirements = {},
	consequence = helpers.change_state("5C")})
S("4", {location = "school",  text = "Your grandparents have been asking about your girlfriend. \nYou're bringing her, right?.\n\nSHIT I FORGOT I LIED ABOUT THAT!! SHIT!", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "Sorry...",
	requirements = {},
	consequence = helpers.change_state("6")})
S("5A", {location = "school",  text = "Then don't come to dinner unless you have one.", girl = "wifi_waifu", choices = ch})
local ch = {}
A(ch, {text = "...",
	requirements = {},
	consequence = helpers.change_state("6")})
S("5B", {location = "school",  text = "Somehow I don't believe that.", girl = "wifi_waifu", choices = ch})
local ch = {}
A(ch, {text = "...",
	requirements = {},
	consequence = helpers.change_state("6")})
S("5C", {location = "school",  text = "Finally, we've all been waiting to meet her for quite a while.", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "That's fine..",
	requirements = {},
	consequence = helpers.change_state("7")})
S("6", {location = "school",  text = "Remember, it's in a week.\n\n SHIT SHIT SHIT SHE'LL DISOWN ME IF SHE FIGURES OUT I'M LYING", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "Sure.",
	requirements = {},
	consequence = helpers.change_state("8")})
S("7", {location = "school",  text = "Good, I'll speak to you later then.", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "Yes Mom, bye.",
	requirements = {},
	consequence = POPBACK})
S("8", {location = "school",  text = "Bye now; Don't forget to eat breakfast..", girl = "wifi_waifu", choices = ch})


local ch = {}
A(ch, {text = "Approach the (cute) girl still in class. It seems she has been observing you as you called your mom.",
	requirements = {},
	consequence = helpers.change_state("9")})
A(ch, {text = "Look for information on dating in the library.",
	requirements = {},
	consequence = helpers.change_state("9")})
A(ch, {text = "Look for girls in the gym.",
	requirements = {},
	consequence = Gamestate.pop})
S("9", {location = "school",  text = "That was an awkward call.. Well, it seems I have to find a girlfriend in a week. But how do I find one? I daren't even approach girls..", girl = "wifi_waifu", choices = ch})
return scene
