def triangleNumber n
	'''
	returns the nth triangle number
	'''
	result = 0
	for x in 1..n
		result += x
	end
	return result
end

def countDivisors n
	'''
	returns the number of divisors of a positive integer n
	'''
	factor = 1
	result = 0
	while factor ** 2 < n
		result += 2 if n % factor == 0
		factor += 1
	end
	result += 1 if factor ** 2 == n
	return result
end
x = gets.chomp.to_i
n = 1
number_divisors = 1
while number_divisors <= x
	n += 1
	number_divisors = countDivisors(triangleNumber(n))
end
puts triangleNumber(n)
