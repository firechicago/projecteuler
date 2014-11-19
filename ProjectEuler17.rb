def numtoLetters n
	'''
	Takes an integer n between 1 and 20999 and returns its text representation
	(e.g. n == 23 returns "twenty three")
	'''
	number_to_letter = {1=> "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "nine",
		10 => "ten",
		11 => "eleven",
		12 => "twelve",
		13 => "thirteen",
		14 => "fourteen",
		15 => "fifteen",
		16 => "sixteen",
		17 => "seventeen",
		18 => "eighteen",
		19 => "nineteen",
		20 => "twenty",
		30 => "thirty",
		40 => "forty",
		50 => "fifty",
		60 => "sixty",
		70 => "seventy",
		80 => "eighty",
		90 => "ninety"
	}
	result = ""
	if n >= 1000
		result += number_to_letter[n/1000] + "thousand"
		n = n%1000
	end
	if n >= 100
		result += number_to_letter[n/100] + "hundred"
		n  = n%100
		result += "and" if n > 0
	end
	if n >= 21
		result += number_to_letter[(n/10)*10]
		n = n%10
	end
	if n >=1
		result += number_to_letter[n]
	end
	return result
end
result = 0
n = gets.chomp.to_i

(1..n).each do |a|
	result += numtoLetters(a).length()
end
puts result