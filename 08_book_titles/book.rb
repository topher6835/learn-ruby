class Book

	# setter
	def title=(name)
		name.capitalize!
		omit = ["a", "an", "and", "as", "at", "by", "in", "it", "of", "the"]
		@title = name.split.map { |w| omit.include?(w) ? w : w.capitalize }.join(" ")
	end

	# getter
	def title
		@title
	end

end