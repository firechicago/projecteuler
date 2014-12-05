require 'prime'
require 'pry'

truncatable_primes = []

start_time = Time.now

Prime.each do |prime|
  next if prime < 10
  not_truncatable = false
  forward_string = prime.to_s
  backward_string = prime.to_s
  until forward_string.empty?
    unless Prime.prime?(forward_string.to_i)
      not_truncatable = true
      break
    end
    forward_string = forward_string[1..-1]
  end
  until backward_string.empty?
    break if not_truncatable
    unless Prime.prime?(backward_string.to_i)
      not_truncatable = true
      break
    end
    backward_string = backward_string[0..-2]
  end
  truncatable_primes << prime unless not_truncatable
  break if truncatable_primes.length >= 11
end

puts truncatable_primes
puts truncatable_primes.reduce(:+)
puts "#{Time.now - start_time} sec"
