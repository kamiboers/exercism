class Squares
  VERSION = 2

  def initialize(num)
    @factorial = (1..num).to_a
  end

  def square_of_sum
    (@factorial.inject(0) { |sum, number| sum + number })**2
  end

  def sum_of_squares
    @factorial.inject(0) { |sum, number| sum + number**2 }
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end

end
