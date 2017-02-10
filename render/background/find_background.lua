local bgs = {}
bgs["bus"] =  love.graphics.newImage("assets/test/ftl.jpg")


return function(name)
	local img = bgs[name]
	if not img then
		return function()
			print("You moron, you forgot a background-image: "..name)
		end
	end
	return function()
		love.graphics.draw(img, 10,10)
	end
end