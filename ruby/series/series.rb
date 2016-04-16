class Series

  def initialize(string)
    @chars = string.chars.map { |char| [char.to_i] }
    @length = string.length
    @arrays = []
  end

  def slices(num)
    raise ArgumentError, "Substring length cannot exceed digit string length." if num > @length 
    num == 1 ? @chars : populate_arrays(num)
  end

  def populate_arrays(num)
    (0..@length-num).to_a.each { |index| @arrays << thing(num, index) }
    @arrays
  end

  def thing(num, index)
    array = @chars[index]
    until array.length == num
      index += 1
       array += @chars[index]
    end
    array
  end


end
