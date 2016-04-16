class Sieve
  attr_reader :primes
  
  def initialize(n)
    @numbers = (3..n).to_a.select { |n| n if n.odd? }
    @primes = [2]
    remove_nonprime(@numbers)
  end

  def remove_nonprime(numbers)
    p = numbers.shift
    numbers = numbers.select { |num| num%p != 0 }
    @primes << p
    numbers.empty? ? numbers : remove_nonprime(numbers)
  end

end
