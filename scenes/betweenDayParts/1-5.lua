local r = {}
r.text = "School is over and you have noting planned for the afternoon, yet."
r.options = {
		{ text = "Look for information on dating in the library.",
			requirements = {},
			consequence = getSwitch("librarygirlday1")
		},
		{	text = "Go Home",
			requirements = {},
			consequence = getSwitch("room")
		},
		
	}

return r