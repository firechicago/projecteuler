UK_COIN_VALUES = [1, 2, 5, 10, 20, 50, 100, 200].reverse

def coin_count(n, values)
  result = 0
  values.each_with_index do |value, index|
    next if n - value < 0
    result += 1 if n - value == 0
    result += coin_count(n - value, values[index..-1]) if n - value > 0
  end
  result
end

start = Time.now
puts coin_count(200, UK_COIN_VALUES)
puts "#{Time.now - start}sec"
