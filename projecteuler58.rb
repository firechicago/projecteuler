require 'prime'
side = 6
current_number = 49
diagonal_numbers = 13
primes = 8
start = Time.now
until primes.to_f / diagonal_numbers < 0.1
  side += 2
  3.times do
    current_number += side
    diagonal_numbers += 1
    primes += 1 if Prime.prime?(current_number)
  end
  current_number += side
  diagonal_numbers += 1
end

puts side + 1
puts "#{Time.now - start} sec"
