def same_digits?(x, y)
  x_digits = x.to_s.split('').sort
  y_digits = y.to_s.split('').sort
  x_digits == y_digits
end

def multiples_same_digits?(x)
  x_digits = x.to_s.split('').sort
  multiple = 2
  until multiple == 7
    multiple_digits = (x * multiple).to_s.split('').sort
    return false unless x_digits == multiple_digits
    multiple += 1
  end
  true
end

num = 1
loop do
  if multiples_same_digits?(num)
    puts num
    break
  end
  num += 1
end
