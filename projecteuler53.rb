def factorial(n)
  result = 1
  until n <= 1
    result *= n
    n -= 1
  end
  result
end

def combination(n, r)
  factorial(n) / (factorial(r) * factorial(n - r))
end

result = 0

(1..100).each do |n|
  (1..100).each do |r|
    break if r >= n
    result += 1 if combination(n, r) > 1_000_000
  end
end

puts result
