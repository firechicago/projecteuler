def buildPrimeHash n
  primeHash = Hash.new
  primeHash[2] = true
  potentialprime = 3
  while potentialprime <= n
    if primeHash[potentialprime] != false
      primeHash[potentialprime] = true
      if potentialprime * 2 < n
        notprime = potentialprime * 2
        while notprime <= n
          primeHash[notprime] = false
          notprime += potentialprime
        end
      end
    end
    potentialprime += 2
  end
  return primeHash
end
primeHash = buildPrimeHash(10000)
(1000..9999).each do |x|
  if primeHash[x]
    (1..2250).each do |interval|
      interval = interval*2
      if primeHash[x+interval] && primeHash[x+2*interval] && x.to_s.chars.sort == (x+interval).to_s.chars.sort && x.to_s.chars.sort == (x+interval*2).to_s.chars.sort
        puts x
        puts x+interval
        puts x + 2*interval
      end
    end
  end
end
