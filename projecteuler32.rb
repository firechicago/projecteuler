possibilities = (1..9).to_a.permutation.to_a
pandigital_products = []
possibilities.each do |n|
  product = n[5] * 1000 + n[6] * 100 + n[7] * 10 + n[8]
  if n[0] * (n[1] * 1000 + n[2] * 100 + n[3] * 10 + n[4]) == product
    pandigital_products << product
    puts product
  elsif (n[0] * 10 + n[1]) * (n[2] * 100 + n[3] * 10 + n[4]) == product
    pandigital_products << product
    puts product
  end
end

puts pandigital_products.uniq.reduce(:+)
