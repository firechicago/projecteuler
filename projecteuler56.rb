def digital_sum(num)
  array = num.to_s.split('').map {|digit| digit.to_i}
  array.reduce(:+)
end
highest_sum = 0
(1..99).each do |a|
  (1..99).each do |b|
    result = digital_sum(a**b)
    highest_sum = result if result > highest_sum
  end
end

puts highest_sum
