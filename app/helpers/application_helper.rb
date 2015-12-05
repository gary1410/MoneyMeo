module ApplicationHelper
	def rand_hex_color
		Array.new(3) {rand(255)}.inject('#') {|color, value| color + value.to_s(16)}.ljust(7,'f')
	end
end
