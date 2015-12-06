count = 1
json.array! debts do |d|
	json.value d.amount
  json.color spread_hex_color(count, debts.length)
  json.highlight rand_hex_color()
  json.label d.type
  count += 1
end