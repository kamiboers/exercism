class Hamming
  VERSION = 1

  def self.compute(strand_one, strand_two)
    throw ArgumentError if strand_one.length != strand_two.length
    empty_strands?(strand_one, strand_two) ? 0 : tally_differences(strand_one, strand_two)
  end

  def self.empty_strands?(a, b)
  	a.empty? && b.empty?
  end

  def self.tally_differences(strand_one, strand_two)
  	(0...strand_one.length).collect { |i| strand_one[i] != strand_two[i] }.count(true)
  end

end
