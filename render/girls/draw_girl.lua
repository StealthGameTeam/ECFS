local bgs = {}
bgs["wifi_waifu"] =  {img = love.graphics.newImage("assets/test/thomas.png"), x = 100, y = 400, sx = 0.5, sy = 0.5}

return function(name)
	local img = bgs[name]

	if not img then
		print("You moron, you forgot a girl-image: "..name)
		return function()
		end
	end
	return function()
		love.graphics.draw(img.img, img.x, img.y, 0, img.sx, img.sy)
	end
end