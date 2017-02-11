local bgs = {}
bgs["school"] =  love.graphics.newImage("assets/backgrounds/school.PNG")


return function(name)
	local img = bgs[name]
	if not img then
		print("You moron, you forgot a background-image: "..name)
		return function()
		end
	end
	return function()
		love.graphics.draw(img, 0,0)
	end
end