local helpers = {}
helpers.add_state = function(list, name,  state)
	list[name] = state
	return state
end
helpers.change_state = function(TO)
	return function()
		CURRENTSTATE = TO
	end
end

return helpers