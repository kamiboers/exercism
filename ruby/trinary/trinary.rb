class Trinary
  
  def initialize(tri)
    @tri = tri
    @dec = tri.reverse.chars.map.with_index { |t, i| t.to_i * 3**i }.inject(:+)
  end

  def to_decimal
    @tri.delete('012').empty? ? @dec : 0
  end

end