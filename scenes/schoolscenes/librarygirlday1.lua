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
C(ch, {text = "Why not?",
	requirements = {},
	consequence = helpers.change_state("aa")})
S("a", {location = "library", text = "*laughs*\nMaybe a library is not the best place for that.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Shit, yes, I didn't think of that.",
	requirements = {},
	consequence = helpers.change_state("aaa")})
S("aa", {location = "library", text = "Because it's supposed to be kinda quiet here.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "No, that's fine, I'll just browse then.",
	requirements = {},
	consequence = helpers.change_state("aaaa")})
C(ch, {text = "I'll leave then.",
	requirements = {},
	consequence = helpers.change_state("aaab")})
S("aaa", {location = "library", text = "So, would you mind being a little quieter?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*Quite some time passes and you go home*",
	requirements = {},
	consequence = Gamestate.pop})
S("aaaa", {location = "library", text = "Okay, have fun! If you need help, just ask.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*wait and be quiet*",
	requirements = {},
	consequence = helpers.change_state("ba")})
S("b", {location = "library", text = "No, I didn't know that yet.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "YES\n*slowly back away, then run*",
	requirements = {},
	consequence = helpers.change_state("baa")})
C(ch, {text = "Actually, no. I need advice on something",
	requirements = {},
	consequence = helpers.change_state("bab")})
S("ba", {location = "library", text = "Was that what you wanted to say?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = Gamestate.pop})
S("baa", {location = "library", text = "Bye then?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I need to talk to The Girls",
	requirements = {},
	consequence = helpers.change_state("a")})
C(ch, {text = "I LIED TO MY FAMILY ABOUT HAVING A GF AND NOW I MIGHT GET DISOWNED IF I DONT BRING ONE TO THE FAMILY DINNER NEXT SUNDAY",
	requirements = {},
	consequence = helpers.change_state("babb")})
S("bab", {location = "library", text = "We usually don't do that, but let's see of what kind of service I can be.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "YES IT IS",
	requirements = {},
	consequence = helpers.change_state("babba")})
S("babb", {location = "library", text = "Oh dear, that seems like quite the problem.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Oh, sorry, yes of course",
	requirements = {},
	consequence = helpers.change_state("babbaa")})
S("babba", {location = "library", text = "Let's see what I can help with. Would you mind being a bit quieter though? This is a library after all.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*ask for the book*",
	requirements = {},
	consequence = helpers.change_state("babbaaa")})
C(ch, {text = "*ask for advice*",
	requirements = {},
	consequence = helpers.change_state("daaaa")})
S("babbaa", {location = "library", text = "Ah, that's better. And now for the issue. Do you need a Dating for Dummies book or actual advice?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("god_exit")})
S("babbaaa", {location = "library", text = "Ah, here you go. Good luck with it!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I will",
	requirements = {},
	consequence = helpers.change_state("ca")})
S("c", {location = "library", text = "Can I help you?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Okay then, ask me if you need help.",
	requirements = {},
	consequence = helpers.change_state("caa")})
S("ca", {location = "library", text = "Can I help you?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*later...*",
	requirements = {},
	consequence = helpers.change_state("caaa")})
S("caa", {location = "library", text = "Good, happy browsing!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "No, I was just leaving",
	requirements = {},
	consequence = helpers.change_state("caaaa")})
C(ch, {text = "Yeah, I wanted to ask if you had comics anywhere?",
	requirements = {},
	consequence = helpers.change_state("caaab")})
S("caaa", {location = "library", text = "Still here? Need help finding something?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = Gamestate.pop})
S("caaaa", {location = "library", text = "Ah, that's fine as well. Have a nice evening!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Anything DC would be nice.",
	requirements = {},
	consequence = helpers.change_state("caaaba")})
C(ch, {text = "Anything Marvel would be nice.",
	requirements = {},
	consequence = helpers.change_state("caaabb")})
S("caaab", {location = "library", text = "Not many, but we have some. What are you looking for?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Bummer",
	requirements = {},
	consequence = helpers.change_state("caaabba")})
S("caaaba", {location = "library", text = "Mmm... We don't have much of that... some of the basic Superman and Batman stuff", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "That's sad... I wanted to read something else",
	requirements = {},
	consequence = helpers.change_state("caaabba")})
S("caaabb", {location = "library", text = "Mmm... I think we only have some Iron Man and some Captain America issues. Those are just most popular.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I will, at a later point. Thanks for the tip. *smile*",
	requirements = {},
	consequence = helpers.change_state("caaabbaa")})
S("caaabba", {location = "library", text = "You could go to the comics shop in town. They have many things.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("good_exit")})
S("caaabbaa", {location = "library", text = "Hey, always happy to help a fellow comic fan.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I'm desperate and I need help",
	requirements = {},
	consequence = helpers.change_state("da")})
C(ch, {text = "I MEAN LIKE AN AGENDA IM TOTALLY NOT TALKING ABOUT DATING GIRLS",
	requirements = {},
	consequence = helpers.change_state("db")})
S("d", {location = "library", text = "Excuse me?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "That's kind of obvious right",
	requirements = {},
	consequence = helpers.change_state("daa")})
S("da", {location = "library", text = "With dating?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "yeeeaaaaah....",
	requirements = {},
	consequence = helpers.change_state("daaa")})
S("daa", {location = "library", text = "You have a point there.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes, about dating a girl.",
	requirements = {},
	consequence = helpers.change_state("daaaa")})
S("daaa", {location = "library", text = "So, advice, right?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Teach me, sempai!",
	requirements = {},
	consequence = helpers.change_state("daaaaa")})
S("daaaa", {location = "library", text = "That shouldn't be that hard.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*Fifteen minutes later*",
	requirements = {},
	consequence = helpers.change_state("daaaaaa")})
S("daaaaa", {location = "library", text = "Yes, of course!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes, thank you! I'm going to try my luck!",
	requirements = {},
	consequence = helpers.change_state("daaaaaaa")})
S("daaaaaa", {location = "library", text = "I hope you understand better now.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = Gamestate.pop})
S("daaaaaaa", {location = "library", text = "Good luck!", girl = "library_girl", choices = ch})

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
	consequence = Gamestate.pop})
S("dbaa", {location = "library", text = "Bye then?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*SHIIIIIIT THIS IS NOT WHAT I WANT*",
	requirements = {},
	consequence = helpers.change_state("dbaba")})
S("dbab", {location = "library", text = "Sure, wait a moment\n*smiles*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = Gamestate.pop})
C(ch, {text = "*stay and awkwardly stand around*",
	requirements = {},
	consequence = helpers.change_state("dbabb")})
S("dbaba", {location = "library", text = "*leaves for a moment*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Ah, uhm, thank you.",
	requirements = {},
	consequence = helpers.change_state("dbabba")})
S("dbabb", {location = "library", text = "Ah, found it! Here it is. *smiles*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "*awkwardly smile back*",
	requirements = {},
	consequence = helpers.change_state("dbabbaa")})
S("dbabba", {location = "library", text = "No problemo, this is my job *smile wider*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes",
	requirements = {},
	consequence = helpers.change_state("dbabbaaa")})
C(ch, {text = "No, actually",
	requirements = {},
	consequence = helpers.change_state("dbabbaab")})
S("dbabbaa", {location = "library", text = "Is that everything?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Sure",
	requirements = {},
	consequence = helpers.change_state("dbabbaaaa")})
S("dbabbaaa", {location = "library", text = "Okay then, let's check out the book.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I'll leave now.",
	requirements = {},
	consequence = helpers.change_state("dbabbaaaaa")})
S("dbabbaaaa", {location = "library", text = "There ya go.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("good_exit")})
S("dbabbaaaaa", {location = "library", text = "Goodbye!", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Weird question, but actually... how do I do the dating thing?",
	requirements = {},
	consequence = helpers.change_state("dbabbaaba")})
S("dbabbaab", {location = "library", text = "Well, what is it then?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "I should not have said that. *Naruto run away*",
	requirements = {},
	consequence = helpers.change_state("dbabbaabaa")})
C(ch, {text = "*cringe but wait*",
	requirements = {},
	consequence = helpers.change_state("dbabbaabab")})
S("dbabbaaba", {location = "library", text = "*laughs*", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Leave",
	requirements = {},
	consequence = helpers.change_state("exit")})
S("dbabbaabaa", {location = "library", text = "Bye then?", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Yes, yes with a Girl.",
	requirements = {},
	consequence = helpers.change_state("daaaa")})
C(ch, {text = "What, really?",
	requirements = {},
	consequence = helpers.change_state("dbabbaababb")})
S("dbabbaabab", {location = "library", text = "With a girl, you mean? I have advice for that.", girl = "library_girl", choices = ch})

local ch = {}
C(ch, {text = "Could you explain how?",
	requirements = {},
	consequence = helpers.change_state("daaaaa")})
S("dbabbaababb", {location = "library", text = "Of course! I'm in a relationship with one!", girl = "library_girl", choices = ch})

return scene
