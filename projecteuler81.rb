require 'csv'

array = CSV.read('p081_matrix.txt')

array.each do |line|
  line.map! {|a| a.to_i}
end

def find_cheapest_path(array, x_index, y_index, path_hash)
  if path_hash[[x_index, y_index]]
     return path_hash[[x_index, y_index]]
  elsif x_index == array.length - 1 && y_index == array[0].length - 1
    return path_hash[[x_index, y_index]] = array[x_index][y_index]
  elsif x_index == array.length - 1
    return path_hash[[x_index, y_index]] = array[x_index][y_index] + find_cheapest_path(array, x_index, y_index + 1, path_hash)
  elsif y_index == array[0].length - 1
    return path_hash[[x_index, y_index]] = array[x_index][y_index] + find_cheapest_path(array, x_index + 1, y_index, path_hash)
  else
    path_hash[[x_index, y_index + 1]] = find_cheapest_path(array, x_index, y_index + 1, path_hash)
    path_hash[[x_index + 1, y_index]] = find_cheapest_path(array, x_index + 1, y_index, path_hash)
    return array[x_index][y_index] + [path_hash[[x_index, y_index + 1]], path_hash[[x_index + 1, y_index]]].min
  end
end

def path_wrapper(array)
  path_hash = {}
  find_cheapest_path(array, 0, 0, path_hash)
end

puts path_wrapper(array)
