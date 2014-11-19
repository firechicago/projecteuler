def buildPrimeHash n
	'''
	returns a Hash where the keys are all the integers from 2 up to some positive integer n,
	and the value is true if the number is prime and false otherwise
	'''
	primeHash = {1=> false, 2 => true}
	potentialprime = 3
	while potentialprime <= n
		if primeHash[potentialprime] != false
			primeHash[potentialprime] = true
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
	return primeHash
end

def otherGoldbach n, primeHash
	test = 1
	while 2 * (test ** 2) < n
		return true if primeHash[n - (2*(test**2))]
		test += 1
	end
	return false
end

puts "What number do you want to check up to?"
n = gets.chomp.to_i
primeHash = buildPrimeHash(n)
test = 3
while test <= n
	if not primeHash[test] and not otherGoldbach(test,primeHash)
		puts test
		break
	end
	test += 2
end


