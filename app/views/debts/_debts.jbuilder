json.array! @debts do |d|
	json.value d.amount
  json.color rand_hex_color()
  json.highlight rand_hex_color()
  json.label d.type
end