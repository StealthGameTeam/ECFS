local bgs = {}
bgs["wifi_waifu"] =  love.graphics.newImage("assets/test/thomas.png")

return function(name)
	local img = bgs[name]

	if not img then
		print("You moron, you forgot a girl-image: "..name)
		return function()
		end
	end
	return function()
		love.graphics.draw(img, 10,10)
	end
end