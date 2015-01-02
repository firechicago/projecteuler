def every_other_digit(n)
  string = n.to_s
  (1..10).each do |digit|
    return false unless string[digit * 2 - 2] == digit.to_s[-1]
  end
  true
end

start = Time.now

n = 1_010_101_010

square = n**2
until every_other_digit(square)
  n += 1 until n % 10 == 0
  n += 10
  if (n**2 / 10**16) % 10 > 2
    n = (Math.sqrt(((square / 10**16) + 2) * 10**16).ceil)
  end
  if (n**2 / 10**14) % 10 > 3
    n = Math.sqrt(((square / 10**14) + 1) * 10**14).ceil
  end
  square = n**2
end

puts n
puts "#{Time.now - start}sec"
