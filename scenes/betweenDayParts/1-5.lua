local r = {}
r.text = "It's getting late, I'm getting tired."
r.options = {
		{	text = "Go Home",
			requirements = {},
			consequence = function() print("1") end
		},
		{	text = "Call a girl to ask her on a date.",
			requirements = {},
			consequence = function() print("1") end
		}
	}

return r