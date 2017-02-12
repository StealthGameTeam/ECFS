local r = {}
r.text = "That was an awkward call.. Well, it seems I have to find a girlfriend in a week. But how do I find one? I daren't even approach girls.."
r.options = {
		{	text = "Approach the (cute) girl still in class. It seems she has been observing you as you called your mom.",
			requirements = {},
			consequence = getSwitch("populargirl1")
		},
		-- {text = "Look for information on dating in the library.",
		-- 	requirements = {},
		-- 	consequence = getSwitch("librarygirlday1")
		-- }
	}

return r