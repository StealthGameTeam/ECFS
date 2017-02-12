local bgs = {}
--bgs["wifi_waifu"] =  {img = love.graphics.newImage("assets/test/thomas.png"), x = 100, y = 400, r=0, sx = 0.5, sy = 0.5}
bgs["mom"] =  {img = love.graphics.newImage("assets/girls/phoneIMG.PNG"), x = 150, y = 150, r=0.1, sx = 0.8, sy = 0.8}
bgs["leia"] = {img = love.graphics.newImage("assets/girls/leiacut.PNG"), x = 150, y = 150, r=0.1, sx = 0.8, sy = 0.8}
bgs["popular_girl"] = {img = love.graphics.newImage("assets/girls/populargirl.PNG"), x = 150, y = 50, r=0.1, sx = 0.8, sy = 0.8}
bgs["library_girl"] = {img = love.graphics.newImage("assets/girls/library2.PNG"), x = 80, y = 30, r=0.1, sx = 0.7, sy = 0.7}
bgs["busstop_girl"] = {img = love.graphics.newImage("assets/girls/busstopgirl2.PNG"), x = 150, y = 150, r=0.1, sx = 0.8, sy = 0.8}

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