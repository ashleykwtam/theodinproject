# In cryptography, a Caesar cipher, also known as Caesar's cipher the shift cipher, Caesar's code or Caesar shift, 
# is one of the simplest and most widely known encryption techniques. 
# It is a type of substitution cipher in which each letter in the plaintext is replaced 
# by a letter some fixed number of positions down the alphabet. 
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 
# The method is named after Julius Caesar, who used it in his private correspondence.

def caesar_cipher(string, shift)
	string = string.to_s
	shift = shift.to_i
	new_string = ""

	string.each_byte do |i|
		if (i > 64 && i < 91) #A-Z
			if (i+shift) > 90
				new_string << (i+shift - 26).chr 
			else
				new_string << (i+shift).chr
			end
		elsif (i > 96 && i < 123) #a-z
			if (i+shift) > 122
				new_string << (i+shift - 26).chr
			else
				new_string << (i+shift).chr
			end
		else
			new_string << i.chr
		end
	end

	puts new_string
end


puts "Input string:"
string = gets.chomp
puts "Shift factor:"
shift = gets.chomp.to_i
puts "The encrypted string is: "
caesar_cipher(string, shift)