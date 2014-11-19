def buildPrimeArray n
	'''
	returns an array containing all the prime numbers up to some positive integer n
	'''
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
n = gets.chomp.to_i
primes = buildPrimeArray(n)
consec_primes = 1
sum = 2
best_sum = 2
best_consec = 1
for index in 0..(primes.length-1)
	sum = primes[index]
	consec_primes = 1
	break if sum >= n/best_consec
	while sum < n
		if consec_primes > best_consec and primes.include?(sum)
			best_sum = sum
			best_consec = consec_primes 
		end
		sum += primes[index + consec_primes]
		consec_primes += 1
	end
end

puts best_consec
puts best_sum

