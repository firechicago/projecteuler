def factorial n
	result = 1
	for x in (2..n)
		result *= x
	end
	return result
end


result = 0
test = 10
while test < 2177280
	testresult = 0
	test.to_s.each_char do |digit|
		testresult += factorial(digit.to_i)
	end
	if test == testresult
		result += testresult
		puts testresult
	end
	test += 1
end
puts result
