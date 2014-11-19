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
n = gets.chomp.to_i
product = 1
for x in 2..n
	if isPrime? x
		mult = x
		while mult * x < n
			mult *= x
		end
		product *= mult
	end
end
puts product