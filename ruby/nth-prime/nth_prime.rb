class Prime

def self.nth(index)
  throw ArgumentError if index == 0
  @primes=[]
  num = 2
  until @primes.length == index do
    @primes << num if self.is_prime?(num)
    num += 1
  end
  @primes[index-1]
end

def self.is_prime?(number)
  if number == 1
    return false
  else
    limit = Math.sqrt(number)
  divisors = (2..limit).to_a.select do |divisor|
    divisor if number%divisor==0
  end
  divisors.empty?
  end
end

end
