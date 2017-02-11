local r = {}
r.text = "That was an awkward call.. Well, it seems I have to find a girlfriend in a week. But how do I find one? I daren't even approach girls.."
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