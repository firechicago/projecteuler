def build_prime_hash n

	#returns a hash containing all the prime numbers up to some positive integer n

	prime_hash = {
		2 => true
	}
	potential_prime = 3
	while potential_prime <= n
		if primeHash[potential_prime] != false
			prime_hash[potential_prime] = true
			if potential_prime ** 2 < n
				notprime = potential_prime * 2
				while notprime <= n
					primeHash[notprime] = false
					notprime += potential_prime
				end
			end
		end
		potential_prime += 2
	end
	prime_hash
end

puts build_prime_hash gets.chomp.to_i
