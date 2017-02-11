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
local wifu = core.PreFill(helpers.add_like, "busstop_girl")

scene.events = {}
scene.events[#scene.events+1] = core.PreFill(core.add_click, {{x=0,y=0},{x=200,y=0},{x=200,y=300},{x=0,y=200}}, asdf)

-- Scene : Background, portrait, choices
-- Dpeth first

local ch = {}
C(ch, {text = "Did you know that children grow faster in the springtime.",
	requirements = {},
	consequence = helpers.change_state("a")})
C(ch, {text = "Hi! Nice weather, right?",
	requirements = {},
	consequence = helpers.change_state("b")})
C(ch, {text = "I honest to god hate sand!",
	requirements = {},
	consequence = helpers.change_state("c")})
S("start", {location = "bus", text = "You arrive at the busstop.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Wait you're not going to walk away?",
	requirements = {},
	consequence = helpers.change_state("aa")})
S("a", {location = "bus", text = "I did not. How interesting", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "That's a fair point",
	requirements = {},
	consequence = helpers.change_state("aaa")})
C(ch, {text = "I didn't plan more than this",
	requirements = {},
	consequence = helpers.change_state("aab")})
S("aa", {location = "bus", text = "Why would I? I need to get on the bus, just like you.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Soo... What is the right order to marathon Star Wars in?",
	requirements = {},
	consequence = helpers.change_state("aaaa")})
C(ch, {text = "What's your name?",
	requirements = {},
	consequence = helpers.change_state("aaab")})
S("aaa", {location = "bus", text = "It is indeed", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "HOW DID YOU NOT WATCH STAR WARS?!",
	requirements = {},
	consequence = helpers.change_state("aaaaa")})
C(ch, {text = "Well we could marathon it, if you want?",
	requirements = {},
	consequence = helpers.change_state("aaaab")})
S("aaaa", {location = "bus", text = "I'm sorry, I've never watched Star Wars...", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Laugh nervously, then Naruto run away",
	requirements = {},
	consequence = helpers.change_state("aaaaaa")})
C(ch, {text = "I'm sorry. It seems we're not compatible",
	requirements = {},
	consequence = helpers.change_state("aaaaab")})
S("aaaaa", {location = "bus", text = "I don't like Sci-fi?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aaaaaa", {location = "bus", text = "Bye?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Laugh nervously, then Naruto run away",
	requirements = {},
	consequence = helpers.change_state("aaaaaa")})
C(ch, {text = "The Bus arrives",
	requirements = {},
	consequence = helpers.change_state("aaaaaab")})
S("aaaaab", {location = "bus", text = "This is a joke, right?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aaaaaab", {location = "bus", text = "I'm gonna go now. Bye!", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*The bus arrives*",
	requirements = {},
	consequence = helpers.change_state("aaaaba")})
S("aaaab", {location = "bus", text = "I'd rather get to know you a bit first, but that sounds nice.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aaaaba", {location = "bus", text = "Oh, I have to go now. Bye!", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "My name is Jules",
	requirements = {},
	consequence = helpers.change_state("aaaba")})
S("aaab", {location = "bus", text = "Oh, my name is Sophie. What's yours?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "I don't know...\n*Laugh nervously*",
	requirements = {},
	consequence = helpers.change_state("aaabaa")})
S("aaaba", {location = "bus", text = "That's a nice name, it's French, isn't it?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*The bus arrives*",
	requirements = {},
	consequence = helpers.change_state("aaaaba")})
S("aaabaa", {location = "bus", text = "*Laughs*", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Because erhm...\n*mutter somthing in Na'vi",
	requirements = {},
	consequence = helpers.change_state("aaba")})
C(ch, {text = "Because I suck at human conversation.",
	requirements = {},
	consequence = helpers.change_state("aabb")})
S("aab", {location = "bus", text = "Why would you need to plan conversations?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "No. *runs away flustered*",
	requirements = {},
	consequence = helpers.change_state("aabaa")})
C(ch, {text = "I said that out loud, didnt I",
	requirements = {},
	consequence = helpers.change_state("aabab")})
S("aaba", {location = "bus", text = "Sorry, could you speak up a little?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aabaa", {location = "bus", text = "Bye then?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "I need to go now",
	requirements = {},
	consequence = helpers.change_state("aababa")})
C(ch, {text = "*Laugh about the situation*",
	requirements = {},
	consequence = helpers.change_state("aababb")})
C(ch, {text = "Oh well. I was speaking in a fantasy language",
	requirements = {},
	consequence = helpers.change_state("aababc")})
S("aabab", {location = "bus", text = "Yes. Yes you did.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aababa", {location = "bus", text = "Oh, hey, the bus is here. I need to go.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*SHIT SHE MUST THINK I'M WEIRD*",
	requirements = {},
	consequence = helpers.change_state("aababca")})
S("aababc", {location = "bus", text = "To each his hobbies, I guess", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*high pitched voice*\nYes, I'm totally fine. This is fine.",
	requirements = {},
	consequence = helpers.change_state("aababcaa")})
S("aababca", {location = "bus", text = "Is everything alright?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*The bus arrives*",
	requirements = {},
	consequence = helpers.change_state("aababcaaa")})
S("aababcaa", {location = "bus", text = "...\nYou're kind of weird.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aababcaaa", {location = "bus", text = "Oh, I have to go now. Bye!", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "No thanks\n*runs away*",
	requirements = {},
	consequence = helpers.change_state("aabba")})
S("aabb", {location = "bus", text = "Then you need to practice more", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("aabba", {location = "bus", text = "Bye then?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "I fucked up.",
	requirements = {},
	consequence = helpers.change_state("ba")})
C(ch, {text = "I happen to like rain a lot.",
	requirements = {},
	consequence = helpers.change_state("bb")})
S("b", {location = "bus", text = "You do realise it's raining, right?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*Be silent until the bus arrives*",
	requirements = {},
	consequence = helpers.change_state("baa")})
S("ba", {location = "bus", text = "Yes, you have.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("baa", {location = "bus", text = "I have to go now.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*Keep eye contact for a minute*",
	requirements = {},
	consequence = helpers.change_state("bba")})
S("bb", {location = "bus", text = "That's weird, but okay.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Like what? *Staring intensifies*",
	requirements = {},
	consequence = helpers.change_state("bbaa")})
C(ch, {text = "Oh, I'm sorry. *Look at her shoes*",
	requirements = {},
	consequence = helpers.change_state("bbab")})
S("bba", {location = "bus", text = "Could you stop staring at me like that?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("bbaa", {location = "bus", text = "I'm gonna go now.", girl = "busstop_girl", choices = ch})

local gh = {}
C(ch, {text = "nOO!?",
	requirements = {},
	consequence = helpers.change_state("bbaba")})
C(ch, {text = "Technically yes?",
	requirements = {},
	consequence = helpers.change_state("bbabb")})
C(ch, {text = "Yes I have. I totally have.",
	requirements = {},
	consequence = helpers.change_state("bbabc")})
S("bbab", {location = "bus", text = "Have you ever talked to a girl before?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*wait awkwardly until the bus arrives*",
	requirements = {},
	consequence = helpers.change_state("bbaa")})
C(ch, {text = "*walk away without saying goodbye*",
	requirements = {},
	consequence = helpers.change_state("bbabab")})
S("bbaba", {location = "bus", text = "That much is obvious.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("bbabab", {location = "bus", text = "Bye then?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "I'm gonna go now.",
	requirements = {},
	consequence = helpers.change_state("bbabab")})
S("bbabb", {location = "bus", text = "Okaaaaay...", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("bbabc", {location = "bus", text = "You're weird. I'm gonna go now.", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "Do you know where the rebels hide?",
	requirements = {},
	consequence = helpers.change_state("1")})
S("c", {location = "bus", text = "Ehrm... Okay?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "TELL ME WHERE PADMES CHILDREN ARE",
	requirements = {},
	consequence = helpers.change_state("2")})
S("1", {location = "bus", text = "What even are you talking about?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*Force choke her*",
	requirements = {},
	consequence = helpers.change_state("3")})
S("2", {location = "bus", text = "What?", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*continue*",
	requirements = {},
	consequence = helpers.change_state("4")})
S("3", {location = "bus", text = "c-can't... br-eathe...", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "You rebel scum! *continue*",
	requirements = {},
	consequence = helpers.change_state("5")})
S("4", {location = "bus", text = "*falls to the ground*", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*laugh manically and continue*",
	requirements = {},
	consequence = helpers.change_state("6")})
S("5", {location = "bus", text = "*face turns blue*", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "*do the darth vader breathing*",
	requirements = {},
	consequence = helpers.change_state("7")})
S("6", {location = "bus", text = "*dies*\n*people around you start screaming*", girl = "busstop_girl", choices = ch})

local ch = {}
C(ch, {text = "GAME OVER",
	requirements = {},
	consequence = helpers.change_state("gave_over")})
S("7", {location = "bus", text = "*police shows up and takes you to jail*", girl = "busstop_girl", choices = ch})

return scene