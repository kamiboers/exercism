class PhoneNumber
  attr_reader :number

def initialize(number)
  number = "0000000000" if contains_letters(number)
  number = number.gsub(/\D/, '')
  number = number[1..-1] if eleven_digit_valid?(number)
  number = "0000000000" if !length_ten(number)
  @number = number
end

def eleven_digit_valid?(number)
  number.length == 11 && number[0] == "1"
end

def contains_letters(number)
  number.downcase.delete(("a".."z").to_a.join) != number
end

def length_ten(number)
  number.length == 10
end

def to_s
  "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
end

def area_code
  @number[0..2]
end

end
