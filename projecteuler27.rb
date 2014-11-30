def build_prime_hash n
  # returns a hash containing all the prime numbers up to some positive integer n
  prime_hash = {
    2 => true
  }
  potential_prime = 3
  while potential_prime <= n
    if prime_hash[potential_prime] != false
      prime_hash[potential_prime] = true
      if potential_prime**2 < n
        notprime = potential_prime * 2
        while notprime <= n
          prime_hash[notprime] = false
          notprime += potential_prime
        end
      end
    end
    potential_prime += 2
  end
  prime_hash
end

is_prime = build_prime_hash(100_000)
most_primes = 0
best_a = 1
best_b = 1
(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    n = 0
    while is_prime[n**2 + n * a + b]
      if n > most_primes
        most_primes = n
        best_a = a
        best_b = b
      end
      n += 1
    end
  end
end

puts "n^2 + #{best_a}n + #{best_b} produces #{most_primes} consecutive primes"
index = 1
until index == most_primes
  puts index**2 + index * best_a + best_b
  index += 1
end
puts best_a * best_b
