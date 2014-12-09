pentagonal_pairs = []

def pentagon(n)
  n * (3 * n - 1) / 2
end

def pentagonal?(n)
  a = (1 + Math.sqrt(24 * n + 1)) / 6
  (a - a.round).abs <= 0.000001
end

(1..3_000).each do |a|
  ((a + 1)..3_000).each do |b|
    pentagon_a = pentagon(a)
    pentagon_b = pentagon(b)
    if pentagonal?(pentagon_a + pentagon_b) && pentagonal?(pentagon_b - pentagon_a)
      pentagonal_pairs << [pentagon_a, pentagon_b]
      puts "#{pentagon_a} - #{pentagon_b} = #{pentagon_b - pentagon_a}"
    end
  end
end
