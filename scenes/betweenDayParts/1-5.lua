local r = {}
r.text = "It's getting late, I'm getting tired."
r.options = {
		{	text = "Go Home",
			requirements = {},
			consequence = function() print("1") end
		}
	}

return r