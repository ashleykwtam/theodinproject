# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).

def bubblesort(array)
	swap = true
	while swap
		swap = false
		for i in 1...array.length do
			if array[i] < array[i-1]
				array[i], array[i-1] = array[i-1], array[i]
				swap = true
			end
		end
	end
	p array
end

bubblesort([20, 4, 2, 19, 100, 3, 50])



# Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
# The block should take two arguments which represent the two elements currently being compared. 
# Expect that the block's return will be similar to the spaceship operator you learned about before 
# -- if the result of the block is negative, the element on the left is "smaller" than the 
# element on the right. 0 means they are equal. A positive result means the left element is greater. 
# Use this to sort your array.

def bubble_sort_by(array)
	swap = true
	while swap
		swap = false
		for i in 1...array.length do
			if yield(array[i], array[i-1]) < 0
				array[i], array[i-1] = array[i-1], array[i]
				swap = true
			end
		end
	end
	p array
end

bubble_sort_by(["howdy", "hello", "hi", "bye", "goodbye"]) do |left, right|
	left.length - right.length
end