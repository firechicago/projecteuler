start_time = Time.now
require 'prime'
circ_primes = 1 # starting with one because the test on line 6 will incorrectly ignore 2
Prime.each(1_000_000) do |num|
  digit_array = num.to_s.split('')
  next if digit_array.any? { |digit| digit.to_i.even? || digit == '5' }
  circ_prime = true
  digit_array.length.times do
    digit_array.rotate!
    unless Prime.prime?(digit_array.join.to_i)
      circ_prime = false
      break
    end
  end
  if circ_prime
    puts num
    circ_primes += 1
  end
end

puts circ_primes

puts "#{Time.now - start_time}sec"
