class Pangram
VERSION = 1

	def self.is_pangram?(string)
		(characters_of_alphabet - characters_of(string)).empty?
	end

	def self.characters_of(string)
		string.gsub(/[^a-zA-Z]/, '').downcase.chars
	end

	def self.characters_of_alphabet
		alphabet = ('a'..'z').to_a
	end

end