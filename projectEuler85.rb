def num_rectangles(height, width)
  result = 0
  (1..height).each do |h|
    (1..width).each do |w|
      result += (height - h + 1) * (width - w + 1)
    end
  end
  result
end

closest_pair = []
closest_score = 1000

(1..2000).each do |a|
  ((a + 1)..2000).each do |b|
    score = (num_rectangles(a, b) - 2_000_000)
    break if score > 1000
    if score.abs < closest_score
      closest_pair = [a, b]
      closest_score = score.abs
    end
  end
  break if num_rectangles(a, a) > 2_001_000
end

puts closest_pair.to_s
puts closest_score
puts closest_pair[0] * closest_pair[1]
