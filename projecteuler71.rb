THREE_OVER_SEVEN = 3.0 / 7.0

closest_fraction_dist = 0.42
closest_fraction_denominator = 1
closest_fraction_numerator = 0

def best_numerator(denominator, target)
  numerator = (target * denominator).floor
  numerator -= 1 unless numerator.gcd(denominator) == 1
  numerator
end

start = Time.now

(8..1_000_000).each do |denominator|
  numerator = best_numerator(denominator, THREE_OVER_SEVEN)
  best_dist = THREE_OVER_SEVEN - numerator.to_f / denominator
  if best_dist < closest_fraction_dist
    closest_fraction_dist = best_dist
    closest_fraction_denominator = denominator
    closest_fraction_numerator = numerator
  end
end

puts closest_fraction_dist
puts closest_fraction_denominator
puts closest_fraction_numerator
puts "#{Time.now - start}sec"
