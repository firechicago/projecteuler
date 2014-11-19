array = []
f = File.open("/Users/christopherwand/Desktop/Programs/projecteuler/ProjectEuler13.txt", "r")
f.each_line do |line|
	array.push(line)
end
f.close



result = 0
for number in array
	number = number[0..12].to_i
	result += number
end
puts result.to_s[0...10]