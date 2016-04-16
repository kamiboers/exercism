class SumOfMultiples

  def initialize(*args)
    args.empty? ? @args = [3, 5] : @args = args.to_a
  end

  def to(a)
    (0...a).to_a.select do |number|
      number if !non_multiple(number)
    end.inject(:+)
  end

  def non_multiple(num)
    @args.select do |arg|
      arg if num%arg == 0
    end.empty?
  end

end
