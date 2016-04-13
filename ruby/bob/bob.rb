class Bob

	def hey(remark)
		generate_response(remark)
	end

	def generate_response(remark)
		response = "Whatever."
		response = "Fine. Be that way!" 	if empty(remark)
		response = "Sure." 								if question(remark)
		response = "Whoa, chill out!" 		if yell(remark)
		response
	end

	def yell(remark)
		remark.upcase == remark && contains_letters?(remark)
	end

	def contains_letters?(remark)
		("A".."Z").to_a != ("A".."Z").to_a - remark.chars
	end

	def question(remark)
		remark.chars.last == "?"
	end

	def empty(remark)
		remark.delete(" \tn").empty?
	end

end