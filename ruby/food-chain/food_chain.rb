class FoodChain

def initialize
	@animals = ["fly"]

def self.prepend(restrictions)
end

def self.song

end

def stanza
	line_one
end

def line_one

	"I know an old lady who swallowed a #{@animal.shift}.\n
	#{line_two}
	I don't know why she swallowed the fly. Perhaps she'll die.\n"
end


end

if __FILE__ == $0
require 'pry'; binding.pry
	end