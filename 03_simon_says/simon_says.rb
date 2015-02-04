def echo (echo_in)
	echo_in
end

def shout (shout_in)
	shout_in.upcase
end

def repeat (repeat_in, num = 2)
	[repeat_in] * num * " "
end

def start_of_word (word, num)
	word[00..num -1]
end

def first_word(line)
	line.split(" ")[0]
end

def titleize (line)
	line.capitalize!
	no_cap = ["the", "and", "an", "at", "a", "by", "of", "on", "over", "to", "it"]
	title = line.split(" ").map { |word|
		if no_cap.include?(word)
			word
		else
			word.capitalize
		end
	}.join(" ")
	title
end