def square_digits(n, hash)
  case n
  when hash[n]
    return hash[n]
  else
    result = n.to_s.chars.map(&:to_i).reduce(0) do |sum, digit|
      sum + digit**2
    end
    return hash[result] || hash[square_digits(result, hash)]
  end
end

start = Time.now
result = 0
hash = { 1 => 1, 89 => 89 }
(1..567).each do |num|
  hash[num] = square_digits(num, hash)
end

(1..10_000_000).each do |num|
  result += 1 if square_digits(num, hash) == 89
end

puts result
puts "#{Time.now - start} seconds"
