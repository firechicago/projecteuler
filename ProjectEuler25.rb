@fibdict = {}
def fibonacci (n)
    return 1 if n <= 2
    return @fibdict[n] if @fibdict[n] != nil
    @fibdict[n] = fibonacci(n-1)+fibonacci(n-2)
    return @fibdict[n]
end
index = 1
currentfib = 1
while currentfib.to_s.length <1000
  index += 1
  currentfib = fibonacci(index)
end
puts index
