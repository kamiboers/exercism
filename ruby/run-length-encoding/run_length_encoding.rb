class RunLengthEncoding
  VERSION = 1

  def self.encode(input)
    @string = ""
    self.compress(input)
    @string
  end

  def self.compress(input)
    compact = input.squeeze
    char = compact.slice!(0)
    until input[0] != char
      count ||= 0
      input.slice!(0)
      count += 1
    end
    @string += count.to_s if count != 1
    @string += char
    self.compress(input) if !input.empty?
  end

  def self.decode(input)
    @output = ""
    self.expand(input)
    @output
  end

  def self.expand(input)
    until !self.is_i?(input[0])
      num ||= ""
      num += input.slice!(0)
    end
    num ||= 1
    char = input.slice!(0)
    num.to_i.times { @output += char }
    self.expand(input) if !input.empty?
  end

  def self.is_i?(string)
    string.to_i.to_s == string
  end

end