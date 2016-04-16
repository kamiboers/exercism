class Binary
  VERSION = 2
  attr_reader :to_decimal

  def initialize(binary)
    throw ArgumentError if !binary.delete("10").empty?
    binary = binary.reverse
    @to_decimal = (0...binary.length).inject(0) { |sum, i| sum + binary[i].to_i * 2**i }
  end
end