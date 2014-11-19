def isPrime? n
	return true if n == 2
	return false if n % 2 == 0 or n == 1
	index = 3
	while index ** 2 <= n
		return false if n % index == 0
		index += 2
	end
	return true
end

def sumPrimesTo n
	result = 0
	result += 2 if n >=2
	x = 3
	while x < n
		result += x if isPrime? x
		x += 2
	end
	return result
end

puts sumPrimesTo gets.chomp.to_i