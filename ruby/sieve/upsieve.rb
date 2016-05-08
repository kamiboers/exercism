class Sieve
  attr_reader :primes
  
  def initialize(n)
    floor = Math.sqrt(n).to_i
    @numbers = (floor..n).to_a.select { |n| n if n.odd? }
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

if __FILE__ == $0
require 'pry'; binding.pry

end