def triangle(n)
  n * (n + 1) / 2
end

def pentagonal?(n)
  a = (1 + Math.sqrt(24 * n + 1)) / 6
  (a - a.round).abs <= 0.000001
end

def hexagonal?(n)
  a = (1 + Math.sqrt(8 * n + 1)) / 4
  (a - a.round).abs <= 0.000001
end

n = 40_756

n += 1 until hexagonal?(triangle(n)) && pentagonal?(triangle(n))

puts triangle(n)
