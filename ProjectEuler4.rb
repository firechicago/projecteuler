def isPalindrome string
	'''
	takes a string and returns true if the string is a palindrome, and false otherwise
	'''
	return true if string == "" or string.length == 1
	return false if string[0] != string[-1]
	return isPalindrome string[1...-1]
end
n = gets.chomp.to_i
palindromes = []
for x in 1..n**2
	if isPalindrome x.to_s
		for factor in 1..n
			if x % factor == 0 and x / factor <= n
				palindromes.push(x)
				break
			end
		end
	end
end
puts palindromes.max

# def largestPalindrome n
# 	'''
# 	returns the largest palindromic number that is a product of two integers less than or equal to n
# 	'''
# 	largest_palindrome = 1
# 	for x in 1..n
# 		for y in 1..n
# 			product = x*y
# 			largest_palindrome = product if isPalindrome product.to_s
# 		end
# 	end
# 	return largest_palindrome
# end

# puts largestPalindrome gets.chomp.to_i