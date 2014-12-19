words = File.read('p042_words.txt').split(',').map {|a| a[1..-2]}

char_values = {}
(10..35).each do |num|
  char_values[num.to_s(36).upcase] = num - 9
end

triangle_nums = []

x = 1
index = 1
until x > 400
  triangle_nums << x
  index += 1
  x += index
end

triangle_words = 0
words.each do |word|
  result = 0
  word.each_char do |char|
    result += char_values[char]
  end
  if triangle_nums.include?(result)
    puts word
    triangle_words += 1
  end
end
puts triangle_words
