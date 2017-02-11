local r = {}
r.text = "asdfasdf"
r.options = {
		{	text = "Approach the (cute) girl still in class. It seems she has been observing you as you called your mom.",
			requirements = {},
			consequence = function() print("1") end
		},
		{text = "Look for information on dating in the library.",
			requirements = {},
			consequence = function() print("2") end
		}, 
		{
			text = "Look for girls in the gym.",
			requirements = {},
			consequence = function() print("3") end
			}
	}

return r