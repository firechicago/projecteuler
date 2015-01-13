def palindrome?(string)
  return true if string.length < 2
  return false if string[0] != string[-1]
  palindrome?(string[1..-2])
end

start = Time.now
result = 0
(0..499_999).each do |num|
  num = num * 2 + 1
  if palindrome?(num.to_s) && palindrome?(num.to_s(2))
    result += num
  end
end

puts result
puts "#{Time.now - start}sec"
