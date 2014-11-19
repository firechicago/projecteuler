number = 2 ** 1000
string = number.to_s
result = 0
string.split("").each do |digit|
	result += digit.to_i
end
puts result
