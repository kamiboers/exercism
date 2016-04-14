require 'pry'

class FoodChain
VERSION = 2
ANIMALS = ["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]
ACTIONS = ["", 	"It wriggled and jiggled and tickled inside her.", 
								"How absurd to swallow a bird!", 
								"Imagine that, to swallow a cat!", 
								"What a hog, to swallow a dog!", 
								"Just opened her throat and swallowed a goat!", 
								"I don't know how she swallowed a cow!", 
								"She's dead, of course!"]

# refactor with case?

def self.prepend(restrictions)
end

def self.song
	@i = 0
	@song = ""
	self.compile_lines
end

def self.compile_lines
	song = 8.times { self.stanza }
	@song.gsub('catch the spider.', 'catch the spider that wriggled and jiggled and tickled inside her.')
end

def self.stanza
	stanza = 	self.line_one + self.line_two + self.what_to_catch_what + self.final_line
	@i += 1
  @song << stanza
end

def self.line_one
	"I know an old lady who swallowed a #{ANIMALS[@i]}.\n"
end

def self.line_two
	@i > 0 ? "#{ACTIONS[@i]}\n" : ""
end

def self.what_to_catch_what
	if @i < 7
		sentence = []
		index = 0
	@i.times do 
		sentence << "She swallowed the #{ANIMALS[index+1]} to catch the #{ANIMALS[index]}.\n" if @i > 0
		index += 1
	end
	list = ""
	sentence.reverse.each { |sentence| list += sentence }
	list
else
	""
end
end

def self.final_line
	@i < 7 ? "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" : ""
end

end