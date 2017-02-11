local helpers = {}
helpers.add_state = function(list, name,  state)
	list[name] = state
	return state
end
helpers.change_state = function(TO)
	return function()
		print("State from " ..CURRENTSTATE .." to "..TO)
		CURRENTSTATE = TO
	end
end
helpers.change_scene = function(TO)
	return function()
		print("Switched from " ..CURRENTSCENE .."-> "..CURRENTSTATE)
		CURRENTSCENE = TO
		CURRENTSTATE = SCENES[CURRENTSCENE].start
		print("Switched to " ..CURRENTSCENE .."-> "..CURRENTSTATE)
	end
end
helpers.add_stat = function(stat, diff)
	return function()
		print(stat ..": ".. GAME[stat].. " + " .. diff ..  " = " .. (GAME[stat] + diff))
		GAME[stat] = GAME[stat] + diff
		helpers.checkState(stat)
	end
end
helpers.add_like = function(stat, diff)
	return function()
		print(stat ..": ".. GAME[stat].. " + " .. diff ..  " = " .. (GAME[stat] + diff))
		GAME[stat] = GAME[stat] + diff
		helpers.checkState(stat)
	end
end

helpers.addChoice = function (list, choice)
	list[#list+1] = choice

end

helpers.addSay = function (state, name, next)
	local choices = {}
	helpers.addChoice(choices, {text="Ok.", requirements = {}, consequence=helpers.change_state(next)})
	state.choices = choices
	return name, state
end

helpers.checkState = function(stat)
	if GAME[stat] < 0 then
		print("Corrected: " .. stat .. ": " .. GAME[stat] .. " to a min. of 0.")
		GAME[stat] = 0
	elseif GAME[stat] > 100 then
		print("Corrected: " .. stat .. ": " .. GAME[stat] .. " to a max. of 100.")
		GAME[stat] = 100
	end
end

return helpers
