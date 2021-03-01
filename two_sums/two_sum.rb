def two_sum(arr, sum)
	arr_hash = {}
	arr.each_with_index { |item, index| arr_hash[:ele] = index } # o(n)
	arr.each_with_index do |item, index| # o(n)
		number = sum - item
		return [index, arr_hash[:ele]] if arr_hash[:number]
	end
	p 'no elements summing up'
end


# Time complexity : O(n). We traverse the list containing n elements exactly twice. Since the hash table reduces the look up time to O(1), the time complexity is O(n).

# Space complexity : O(n). The extra space required depends on the number of items stored in the hash table, which stores exactly n elements.