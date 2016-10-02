# Implement a method #substrings that takes a word as the first argument and then 
# an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found 
# in the original string and how many times it was found.
# Make sure your method can handle multiple words.

def substring(words, dictionary)
	output = Hash.new(0)

	words.downcase.split(" ").each do |i|
		dictionary.each do |x|
			output[x] += 1 if i.include?(x)
		end
	end
	p output 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", dictionary)