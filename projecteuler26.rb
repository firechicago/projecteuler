ONE = 10**2_000
longest_cycle = 0
longest_divisor = 0

(1..1000).each do |divisor|
  decimal = (ONE / divisor).to_s
  length = 1
  first = decimal[-1]
  second = decimal[-2]
  until first == second
    length += 1
    first = decimal[(-1 * length)..-1]
    second = decimal[(-2 * length)..((-1 * length - 1))]
  end
  if length > longest_cycle
    longest_cycle = length
    longest_divisor = divisor
  end
end

puts "1 divided by #{longest_divisor} has the longest cycle, #{longest_cycle} digits long"
