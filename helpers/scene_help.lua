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

helpers.add_stat = function(stat, diff)
	return function()
		print(stat ..": ".. GAME[stat].. " + " .. diff ..  " = " .. (GAME[stat] + diff))
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