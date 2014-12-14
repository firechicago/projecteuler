lychrel_numbers = 10_000

def palindromic_number?(n)
  n = n.to_s
  return true if n.length < 2
  return false unless n[0] == n[-1]
  palindromic_number?(n[1..-2])
end

(1..10_000).each do |n|
  50.times do
    n += n.to_s.reverse.to_i
    if palindromic_number?(n)
      lychrel_numbers -= 1
      break
    end
  end
end

puts lychrel_numbers
