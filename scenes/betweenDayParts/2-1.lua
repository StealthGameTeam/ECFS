local r = {}
r.text = "I should leave home."
r.options = {
		{	text = "Go to the bus stop",
			requirements = {},
			consequence = getSwitch("busstopgirl1")
		}
	}

return r