class Fixnum
VERSION = 1

CONVERSION = {  1000 => "M",   900 => "CM",  500 => "D",   400 => "CD",
                100 => "C",    90 => "XC",   50 => "L",    40 => "XL",
                10 => "X",     9 => "IX",    5 => "V",     4 => "IV",
                1 => "I" }

  def to_roman(num=self, numeral="")
    CONVERSION.each do |value, letter|
      ( num/value ).times { numeral += letter }
      num = num % value
    end
    numeral
  end

end
