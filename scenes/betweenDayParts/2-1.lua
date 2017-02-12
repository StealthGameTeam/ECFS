local r = {}
r.text = "I should leave home."
r.options = {
		{	text = "Go to the bus stop",
			requirements = {},
			consequence = function() print("1") end
		}
	}

return r