class Grains
	VERSION = 1

	def self.square(square_number)
		2**(square_number-1)
	end

	def self.total
		(0...64).to_a.reduce(0) { |sum, num| sum + 2**num }
	end

end