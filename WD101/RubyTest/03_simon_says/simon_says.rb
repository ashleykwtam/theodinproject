#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times =2)
	([word] * times).join(" ")
end

def start_of_word(start, stop)
	start[0...stop]
end

def first_word(word)
	word.split(" ").first
end

def titleize(s)
	words = s.split.each do |word|
		if word != "and" and word != "over" and word != "the"
			word.capitalize!
		else
			word.downcase!
		end
	end
	words.first.capitalize!
	words.join(" ")
end