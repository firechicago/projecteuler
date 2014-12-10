start_time = Time.now
x = 1
7_830_457.times do
  x *= 2
  x = x % 10_000_000_000
end

x *= 28_433
x += 1
puts x % 10_000_000_000
puts "#{Time.now - start_time}sec"
