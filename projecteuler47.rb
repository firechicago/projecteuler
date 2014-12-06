require 'prime'
prime_factors_hash = {}
def num_prime_factors(n, hash)
  num_factors = 0
  orig = n
  Prime.each do |prime|
    if n % prime == 0
      return 5 if num_factors == 4
      num_factors += 1
      while n % prime == 0
        n /= prime
        if hash[n]
          result += hash[n]
          hash[orig] = result
          return result
        end
      end
    end
    break if n == 1
  end
  num_factors
end

index  = 656
consec_nums = []
until consec_nums.length == 4
  if num_prime_factors(index, prime_factors_hash) == 4
    consec_nums << index
    puts index
  else
    consec_nums = []
  end
  index += 1
end
