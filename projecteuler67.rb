triangle = []
File.open('p067_triangle.txt') do |f|
  f.each_line do |line|
    triangle << line.split.map(&:to_i)
  end
end

y = triangle.length-2
maxrow = triangle[y+1]
while y >= 0
	newrow = []
	for x in 0..(maxrow.length - 2)
		newrow << [maxrow[x] + triangle[y][x], maxrow[x+1] + triangle[y][x]].max
	end
	maxrow = newrow
	y -= 1
end

puts maxrow


