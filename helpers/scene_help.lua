local helpers = {}
helpers.add_state = function(list, name,  state)
	list[name] = state
	return state
end
helpers.change_state = function(TO)
	return function()
		print("State from " ..CURRENTSTATE .." to "..TO)
		CURRENTSTATE = TO
		get_options()


	end
end
helpers.change_scene = function(TO)
	return function()
		print("Switched from " ..CURRENTSCENE .."-> "..CURRENTSTATE)

		CURRENTSCENE = TO
		CURRENTSTATE = SCENES[CURRENTSCENE].start
		print("Switched to " ..CURRENTSCENE .."-> "..CURRENTSTATE)
		get_options()

	end
end
helpers.add_stat = function(stat, diff)
	return function()
		print(stat ..": ".. GAME[stat].. " + " .. diff ..  " = " .. (GAM1E[stat] + diff))
		GAME[stat] = GAME[stat] + diff
	end
end
helpers.add_like = function(stat, diff)
	return function()
		print(stat ..": ".. GAME[stat].. " + " .. diff ..  " = " .. (GAME[stat] + diff))
		GAME[stat] = GAME[stat] + diff
	end

end

return helpers