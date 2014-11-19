def diffSumSquares x
	sumsquare = 0
	sum = 0
	for n in 1..x
		sumsquare += n ** 2
		sum += n
	end
	return sum**2 - sumsquare
end

puts diffSumSquares gets.chomp.to_i