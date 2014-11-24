array = (0..9).to_a
permutations = array.permutation.to_a
sorted = permutations.map(&:join).sort
puts sorted[999_999]
