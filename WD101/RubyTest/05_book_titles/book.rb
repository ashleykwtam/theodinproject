class Book
# write your code here
	attr_reader :title

	def title=(new_title)
		words = new_title.capitalize!.split(" ")
		words.map! do |word|
			if ["the", "a", "an", "and", "of", "in"].include? word
				word
			else
				word.capitalize
			end
		end
		@title = words.join(" ")
	end
end
