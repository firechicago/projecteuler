result = 0
(10..999_999).each do |x|
  digits = x.to_s.chars.map {|y| y.to_i}
  if digits.inject(0) {|sum, digit| sum + digit**5} == x
    puts x
    result += x
  end
end
puts result
