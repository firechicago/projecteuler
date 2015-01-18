def phi(n)
  result = 1
  (2..(n - 1)).each { |m| result += 1 if n.gcd(m) == 1 }
  result
end

highest_ratio = 3
num_with_highest_ratio = 6
n = 6
until n > 999_999
  n += num_with_highest_ratio
  phi_of_n = phi(n)
  if n.to_f / phi_of_n > highest_ratio
    puts highest_ratio = n / phi_of_n.to_f
    puts num_with_highest_ratio = n
  end
end
