file = File.read("p022_names.txt")
file = file.delete('"')
names = file.split(',')
names.sort!
char_values = {}
index = 0
("A".."Z").each do |char|
  index += 1
  char_values[char] = index
end
total = 0
index = 1
names.each do |name|
  name_total = 0
  name.each_char do |char|
    name_total += char_values[char]
  end
  total += name_total * index
  index += 1
end
puts total
