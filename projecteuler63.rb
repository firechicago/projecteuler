result = 3

(4..9).each do |n|
  power = 1
  until (n**power).to_s.length < power
    result += 1 if (n**power).to_s.length == power
    power += 1
  end
end

puts result
