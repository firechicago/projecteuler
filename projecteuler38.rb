def nine_digit_pandigital?(string)
  array = string.split('').sort
  array == ['1', '2', '3', '4', '5', '6', '7', '8', '9']
end

pandigitals = []
(1..9_999).each do |int|
  string = ''
  index = 1
  until string.length >= 9
    string << (int * index).to_s
    index += 1
  end
  pandigitals << string if nine_digit_pandigital?(string)
end

puts pandigitals.max
