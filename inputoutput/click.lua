core.clicks = {}
core.cc = {}
require 'systems.collision.lib'

function love.mousepressed( x, y, button, istouch )
	print(x,y)
	if button == 1 then
		for k,v in ipairs(core.clicks) do
			v(x,y)
		end
	end
end

core.add_click = function(poly, func)
	core.cc[#core.clicks+1] = poly

	core.clicks[#core.clicks+1] = function(x,y)
		if point_in_polygon(poly , x,y) then
			func()
		end
	end
end