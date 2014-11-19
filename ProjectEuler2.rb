def recurFib n
	return 1 if n <= 2
	return (recurFib n-1) + (recurFib n-2)
end

def sumEvenFib n
	current_index = 1
	current_fib = recurFib current_index
	sum = 0
	while current_fib < n
		if current_fib % 2 == 0
			sum += current_fib
		end
		current_index += 1
		current_fib = recurFib current_index
	end
	return sum
end

n = gets.chomp.to_i
puts sumEvenFib n
