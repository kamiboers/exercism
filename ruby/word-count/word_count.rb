class Phrase
VERSION = 1

	def initialize(phrase)
		phrase = phrase.gsub(/[^a-zA-Z0-9 ']/, ' ').downcase
		remove_single_quotes(phrase)
	end

	def remove_single_quotes(phrase)
		@phrase = phrase.gsub(" '", " ").gsub("' ", " ").split
	end

	def word_count
		@phrase.reduce(Hash.new(0)) { |hash, word| hash[word] += 1; hash }
	end

end