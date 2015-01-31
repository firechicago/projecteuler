def prime?(n)
	return true if n == 2
	return false if n % 2 == 0 or n == 1
	index = 3
	while index ** 2 <= n
		return false if n % index == 0
		index += 2
	end
	return true
end

def largest_prime_factor(n)
	return n if prime? n
	result = 2
	index = 3
	while index <= n
		result = index if n % index == 0 && prime?(index)
		n /= index while n % index == 0
		index += 2
	end
	result
end

puts largestPrimeFactor gets.chomp.to_i
