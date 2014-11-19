def buildCollatzHash n
	'''
	wrapper function which returns a hash in which the keys are integers one through n
	and the values are the number of Collatz steps needed to get to one from that integer
	'''
	@collatz_hash = {1=>1}
	for x in 1..n
		recurCollatz(x)
	end
	return @collatz_hash
end

def recurCollatz n
	return @collatz_hash[n] if @collatz_hash[n] != nil
	if n % 2 == 0
		@collatz_hash[n] = recurCollatz(n/2) + 1
		# return @collatz_hash[n]
	else
		@collatz_hash[n] = recurCollatz(3*n+1) + 1
		# return @collatz_hash[n]
	end
end

n = gets.chomp.to_i
collatz_hash = buildCollatzHash n
puts collatz_hash.max_by { |key, value| value }

