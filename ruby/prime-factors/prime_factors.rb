class PrimeFactors

  def self.for(num)
    @factors = []
    num == 1 ? [] : find_factors(num)
  end

  def self.possible_prime_factors(num)
    require 'pry'; binding.pry
    (2..num).to_a.select { |num| num if num.odd? }.unshift(2)
  end

  def self.find_factors(num)
    divisors = possible_prime_factors(num)

    require 'pry'; binding.pry

    until @factors.reduce(:*) == num
      divisors.each do |div|
        divide(num,div)
      end
    end

    @factors
  end

  def self.divide(num, div)
    if num%div == 0
      @factors << div
      num = num/div
      divide(num, div)
    end
  end

end
