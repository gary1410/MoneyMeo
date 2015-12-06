module ApplicationHelper
	def rand_hex_color
		Array.new(3) {rand(255)}.inject('#') {|color, value| color + value.to_s(16)}.ljust(7,'f')
	end

	def spread_hex_color(index, total, color_max = 230)
		# 0 == black, 255 == white
		color_int = ((color_max / total) * index)
		color_hex = color_int.to_s(16)
		# output ex: '#efefef'
		"#" + color_hex.ljust(6,color_hex)
	end
end
