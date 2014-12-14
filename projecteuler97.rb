start_time = Time.now
x = 1
two_to_one_thousand = 2**1000
7_830.times do
  x *= two_to_one_thousand
  x = x % 10_000_000_000
end
x *= 2**457

x *= 28_433
x += 1
puts x % 10_000_000_000
puts "#{Time.now - start_time}sec"
