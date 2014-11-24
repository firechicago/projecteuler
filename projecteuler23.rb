def divisors(n)
  divisors_array = [1]
  index = 2
  while index**2 <= n
    if n % index == 0
      divisors_array << index
      divisors_array << n / index
    end
    index += 1
  end
  divisors_array.uniq
end

@abundant_hash = {}

def abundant?(n)
  return @abundant_hash[n] unless @abundant_hash[n].nil?
  sum_divisors = divisors(n).reduce(:+)
  return @abundant_hash[n] = true if sum_divisors > n
  @abundant_hash[n] = false
end

def sum_two_abundants?(n)
  (12..(n / 2)).each do |m|
    return true if abundant?(m) && abundant?(n - m)
  end
  false
end

result = 0
start_time = Time.now
(1..28_123).each do |n|
  unless sum_two_abundants?(n)
    result += n
    puts n
  end
end
end_time = Time.now

puts result
puts "Calculation took #{end_time - start_time} seconds."
