string = ""
index=1
while string.length < 1000001
  string+= index.to_s
  index += 1
end
puts string[0].to_i*string[9].to_i*string[99].to_i*string[999].to_i*string[9999].to_i*string[99999].to_i*string[999999].to_i
