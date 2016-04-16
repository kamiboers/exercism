class Array

  def accumulate(&block)
    self.each_with_object([]) do |arg,arr|
      arr << block.call(arg)
    end
  end

end
