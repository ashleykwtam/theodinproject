# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.

def stock_picker(prices)
	# max_gain, buy_day, sell_day, current_day = 0, 0, 0, 0

	# while prices.length > 0
	# 	current_price = prices.shift
	# 	prices.each_with_index do |price, day|
	# 		if current_price - price > max_gain
	# 			buy_day = current_day
	# 			sell_day = day + current_day + 1
	# 			max_gain = current_price - price
	# 		end
	# 	end
	# 	current_day += 1
	# end

	diff, i, j, dates = 0, 0, 1, []
	while i < prices.length
		while j < prices.length
			if (prices[j] - prices[i]) > diff
				diff = (prices[j] - prices[i])
				dates[0] = i
				dates[1] = j
			end
			j += 1
		end
		j = i + 1
		i += 1
	end

	puts "You should buy on day #{dates[0]} and sell on day #{dates[1]} for a profit of $#{diff}."

end

stock_picker([6, 2, 6, 10, 12, 30, 1, 4])
stock_picker([2, 2, 3, 40, 3, 8, 6, 7, 10])