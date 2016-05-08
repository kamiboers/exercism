class Array
  
  def keep(&block)
    return [] if self.empty?
    self.map { |arg| block.call(arg) ? arg : nil }.compact
  end

  def discard(&block)
    self.map { |arg| block.call(arg) ? nil : arg }.compact
  end

end