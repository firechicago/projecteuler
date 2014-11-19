def buildPrimeArray n

	#returns an array containing all the prime numbers up to some positive integer n

	primeHash = {}
	primes = [2]
	potentialprime = 3
	while potentialprime <= n
		if primeHash[potentialprime] != false
			primes.push(potentialprime)
			if potentialprime ** 2 < n
				notprime = potentialprime * 2
				while notprime <= n
					primeHash[notprime] = false
					notprime += potentialprime
				end
			end
		end
		potentialprime += 2
	end
	return primes
end

puts buildPrimeArray gets.chomp.to_i
