local bgs = {}
bgs["school"] =  {img = love.graphics.newImage("assets/backgrounds/school1.PNG"), x = 0, y = 0, r=0, sx = 0.75, sy = 0.75}


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