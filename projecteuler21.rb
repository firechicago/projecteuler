def sum_of_divisors(n)
  result = 0
  (1..(n / 2 + 1)).each do |x|
    result += x if n % x == 0
  end
  return result
end

result = 0
(1..10_000).each do |x|
  sum = sum_of_divisors(x)
  if sum != x && x == sum_of_divisors(sum)
    result += sum + x
  end
end

puts result / 2
