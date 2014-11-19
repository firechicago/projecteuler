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
desired_primes = gets.chomp.to_i
test = 3
numprimes = 1
puts 2
while numprimes < desired_primes
	if isPrime? test
		numprimes += 1
		puts test
	end
	test += 2
end