def translate (word_in)
	word_in.split(" ").map {|w| translate_one(w) }.join(" ")
end


def translate_one (word)
	vowel = ["a", "e", "i", "o", "u"]
	
	if vowel.include?(word[0])
		word = word + "ay"

	elsif (!vowel.include?(word[0]) && !vowel.include?(word[1]) && !vowel.include?(word[2]) || (word[1] == "q" && word[2] == "u"))
		word = word[3..word.length] + word[0..2] + "ay"
	
	elsif (!vowel.include?(word[0]) && !vowel.include?(word[1]) || word[0] == "q" && word[1] == "u")
		word = word[2..word.length] + word[0..1] + "ay"
	
	else
		word = word[1..word.length] + word[0] + "ay"
	end
	word
end