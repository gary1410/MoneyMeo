json.labels debts.map {|d| d.type}
json.datasets do
	json.array do
		json.label "My First dataset"
		json.fillColor rand_hex_color()
		json.strokeColor "#000000"
		json.highlightFill rand_hex_color()
		json.highlightStroke "#000000"
		json.data debts.map {|d| d.rate.round(4)}
	end
end