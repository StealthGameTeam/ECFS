local bgs = {}
bgs["wifi_waifu"] =  {img = love.graphics.newImage("assets/test/thomas.png"), x = 100, y = 400, r=0, sx = 0.5, sy = 0.5}
bgs["mom"] =  {img = love.graphics.newImage("assets/girls/phoneIMG.PNG"), x = 150, y = 150, r=0.1, sx = 0.8, sy = 0.8}

return function(name)
	local img = bgs[name]

	if not img then
		print("You moron, you forgot a girl-image: "..name)
		return function()
		end
	end
	return function()
		love.graphics.draw(img.img, img.x, img.y, img.r, img.sx, img.sy)
	end
end