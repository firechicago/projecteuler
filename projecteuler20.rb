def factRecur n
	return 1 if n == 1 or n == 0
	return n * factRecur(n-1)
end

string = factRecur(100).to_s
result = 0
string.split('').each do |digit|
	result += digit.to_i
end
puts result