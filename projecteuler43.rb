DIGITS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
pandigital_strings =  DIGITS.permutation.map { |a| a.join }

result_array = []

pandigital_strings.each do |n|
  if n[1..3].to_i % 2 == 0 && n[2..4].to_i % 3 == 0 && n[3..5].to_i % 5 == 0
    if n[4..6].to_i % 7 == 0 && n[5..7].to_i % 11 == 0 && n[6..8].to_i % 13 == 0
      if n[7..9].to_i % 17 == 0
        result_array << n.to_i
      end
    end
  end
end
puts result_array
puts result_array.reduce(:+)
