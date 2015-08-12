def reduce(numerator, denominator)
  gcd = numerator.gcd(denominator)
  [numerator/gcd, denominator/gcd]
end

def digits(two_digit_number)
  [two_digit_number/10, two_digit_number%10]
end

def digit_cancel(numerator, denominator)
  num_digits = digits(numerator)
  den_digits = digits(denominator)
  num_digits.each do |digit|
    if den_digits.include?(digit)
      num_digits.delete(digit)
      den_digits.delete(digit)
      return [num_digits, den_digits].flatten
    end
  end
  nil
end

def variants(numerator, denominator)
  variants = []
  multiple = 1
  until multiple * denominator > 100
    variants << [numerator * multiple, denominator * multiple]
    multiple += 1
  end
  variants
end

pairs = []
(11..99).each do |numerator|
  ((numerator+1)..100).each do |denominator|
    smallest_form = reduce(numerator, denominator)
    all_variants = variants(smallest_form[0], smallest_form[1])
    if all_variants.include?(digit_cancel(numerator, denominator)) && numerator % 10 != 0
      pairs << reduce(numerator, denominator)
      puts "#{numerator}/#{denominator}"
    end
  end
end

product = pairs.reduce { |result, pair| [ result[0] * pair[0], result[1] * pair[1] ] }

puts "#{reduce(product[0], product[1])}"
