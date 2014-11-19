result = 0
(1..1000).each do |x|
  result += x ** x
  result = result % 10000000000
end
puts result
