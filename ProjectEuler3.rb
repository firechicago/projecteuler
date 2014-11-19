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

def largestPrimeFactor n
	return n if isPrime? n
	largest_prime_factor = 2
	index = 3
	while index <= n
		largest_prime_factor = index if n % index == 0 and isPrime? index
		while n % index == 0 
			n /= index
		end
		index += 2
	end
	return largest_prime_factor
end

puts largestPrimeFactor gets.chomp.to_i


