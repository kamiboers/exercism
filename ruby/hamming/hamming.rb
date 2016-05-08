class Hamming
  VERSION = 1

  def self.compute(s1, s2)
    raise ArgumentError, "Strands must be of equal length." if s1.length != s2.length
    empty_strands?(s1, s2) ? 0 : tally_differences(s1, s2)
  end

  def self.empty_strands?(s1, s2)
    s1.empty? && s2.empty?
  end

  def self.tally_differences(s1, s2)
    (0...s1.length).collect { |i| s1[i] != s2[i] }.count(true)
  end

end
