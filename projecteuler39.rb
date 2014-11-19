def right_triangle?(a,b,c)
  a**2 + b**2 == c**2
end

def num_triangles(n)
  result = 0
  (1..(n/3)).each do |a|
    ((n/2-a-1)..(2*n/3)).each do |b|
      if right_triangle?(a,b,n-a-b)
        result += 1
        break
      end
    end
  end
  result
end

most_triangles = 0
best_number = 0
(1..1000).each do |n|
  triangles = num_triangles(n)
  if triangles > most_triangles
    most_triangles = triangles
    best_number = n
    puts most_triangles
    puts best_number
  end
end

puts best_number
