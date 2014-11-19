n = gets.chomp.to_i

for a in 1..n/3
	for b in a..n/2
		c = n - b - a
		puts "(#{a},#{b},#{c}) #{a*b*c}" if a**2 + b**2 == c**2
	end
end