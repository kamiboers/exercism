class Raindrops
  VERSION = 1

  def self.convert(number)

    number%3 == 0 ? a = "Pling" : a = ""
    number%5 == 0 ? b = "Plang" : b = ""
    number%7 == 0 ? c = "Plong" : c = ""
    (a.empty? && b.empty? && c.empty?) ? d = number.to_s : d = ""

    answer = a + b + c + d
  end

end
