require "csv"

largest_line = 0
largest_value = 0
current_line = 0


CSV.foreach("p099_base_exp.txt") do |row|
  current_line += 1
  current_value = row[1].to_i * Math.log(row[0].to_i)
  if current_value > largest_value
    puts largest_value = current_value
    puts largest_line = current_line
  end
end
