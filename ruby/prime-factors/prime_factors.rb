require 'prime'
class PrimeFactors

  def self.for(num)
   num < 1000000 ? divide(num) : divide_big(num)
 end

 def self.divide(num, p=2, factors=[])
  while num%p == 0
    factors << p 
    num /= p
  end
  p = 2 ? p+=1 : p+=2
  divide(num, p, factors) unless num == 1
  factors
end

def self.divide_big(num, factors=[], x=100)
  primes = sieve(x)
  divisors = primes.select { |p| num%p == 0 }
  f = divisors.shift
  unless f.nil?
    while num%f == 0
      factors << f 
      num /= f
    end
  end
  Prime.prime?(num) ? (factors<<num) : divide_big(num, factors, 10*x)
end

def self.sieve(n, floor=3)
  @numbers = (floor..n).to_a.select { |n| n if n.odd? }
  @primes = [2]
  remove_nonprime(@numbers)
end

def self.remove_nonprime(numbers)
  p = numbers.shift
  numbers = numbers.select { |num| num%p != 0 }
  @primes << p
  numbers.empty? ? @primes : remove_nonprime(numbers)
end

end