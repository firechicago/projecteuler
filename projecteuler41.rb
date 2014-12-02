def build_prime_hash(n)
  # returns a hash containing all the prime numbers up to some positive integer n
  prime_hash = { 2 => true }
  potential_prime = 3
  while potential_prime <= n
    if prime_hash[potential_prime] != false
      # puts potential_prime
      prime_hash[potential_prime] = true
      add_multiples(potential_prime, prime_hash, n) if potential_prime**2 < n
    end
    potential_prime += 2
  end
  prime_hash
end

def add_multiples(prime, prime_hash, n)
  not_prime = prime * 2
  while not_prime <= n
    prime_hash[not_prime] = false
    not_prime += prime
  end
end
# start_time = Time.now
prime_hash = build_prime_hash(7_654_322)
# puts "#{Time.now - start_time}sec"
pandigital_primes = []
['1', '2', '3', '4', '5', '6', '7'].permutation.each do |permute|
  pandigital = Integer(permute.join)
  if prime_hash[pandigital]
    pandigital_primes << pandigital
    puts pandigital
  end
end

puts pandigital_primes.max
