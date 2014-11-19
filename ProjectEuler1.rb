def sumMultiples3and5 number
	sum = 0
	for x in 1...number
		if x % 3 == 0
			sum += x
		elsif x % 5 == 0
			sum += x
		end
	end
	return sum
end

input = gets.chomp.to_i
puts sumMultiples3and5 input 