result = 1
side = 0
current_number = 1

500.times do
  side += 2
  4.times do
    current_number += side
    result += current_number
  end
end

puts result
