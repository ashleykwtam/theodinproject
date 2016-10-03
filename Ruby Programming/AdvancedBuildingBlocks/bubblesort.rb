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