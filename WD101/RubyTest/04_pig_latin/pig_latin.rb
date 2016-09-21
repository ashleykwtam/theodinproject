#write your code here
def translate(word)
	words = word.split(" ")
	words.map! do |word|
		translate_word(word)
	end
	words.join(" ")
end

def vowel?(letter)
	"aeiouy".include? letter
end

def translate_word(word)
	x = word.length
	if vowel?(word[0])
		word + "ay"
	elsif word[0..1] == "qu"
		word[2..(x-1)] + word[0..1] + "ay"
	elsif word[1..2] == "qu"
		word[3..(x-1)] + word[0..2] + "ay"
	elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2]) # word begins with 3 consonants
		word[3..(x-1)] + word[0..2] + "ay"
	elsif !vowel?(word[0]) && !vowel?(word[1]) # word begins with 2 consonants
		word[2..(x-1)] + word[0..1] + "ay"
	else !vowel?(word[0]) # word begins with consonant
		word[1..(x-1)] + word[0] + "ay"
	end
end