local helpers = {}
helpers.add_state = function(list, name,  state)
	list[name] = state
	return state
end