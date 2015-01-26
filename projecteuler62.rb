
start = Time.now

def to_digits(d)
  digits = []
  while d > 0
    digits << d % 10
    d /= 10
  end
  digits
end

def smallest_cube(digits)
  index = 0
  cube = 0
  until to_digits(cube).sort == digits
    index += 1
    cube = index**3
  end
  cube
end

def check_cube(n, cube_hash, root)
  n_digits = to_digits(n).sort
  cube_hash = Hash.new(0) if n_digits.length > ((root - 1)**3).to_s.length
  cube_hash.each do |key, _value|
    return cube_hash[key] += 1 if n_digits == key
  end
  cube_hash[n_digits] += 1
end

cube_hash = Hash.new(0)
index = 0
most_cubes = 0
until most_cubes >= 5
  index += 1
  num_cubes = check_cube(index**3, cube_hash, index)
  if num_cubes > most_cubes
    puts most_cubes = num_cubes
    puts "#{Time.now - start}sec"
    digits = to_digits(index**3).sort
    puts smallest_cube(digits)
  end
end

puts "#{Time.now - start}sec"
