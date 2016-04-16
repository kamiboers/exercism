class SumOfMultiples

  def initialize(x=3, y=5, a=nil)
    @x = x
    @y = y
    @a = a
  end

  def to(z)
    (0...z).to_a.select do |number|
      divisible(number)
    end.inject(:+)
  end

  def divisible(num)
  if !@a
    (num if num%@x == 0 || num%@y == 0)
  else
    (num if num%@x == 0 || num%@y == 0 || num%@a == 0)
  end
  end

end