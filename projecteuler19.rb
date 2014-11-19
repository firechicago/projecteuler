days_in_months = [31,28,31,30,31,30,31,31,30,31,30,31]
result = 0
year = 0
day = 1
101.times do
  (0..11).each do |index|
    day += days_in_months[index]
    day += 1 if index == 1 && year % 4 == 0 && year != 0
    result += 1 if day % 7 == 0 && year > 0
  end
  year += 1
end
puts result
