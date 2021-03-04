def two_sum(arr, sum)
	size = arr.size
	arr.each_with_index.each do |item, i| # o(n)
		number = sum - item
		return [i, arr.index(number)] if arr[i+1...size].include?(number) # o(n)
	end
	'no elements summing up'
end

arr = [3,2,4]
sum = 6

p two_sum(arr, sum)

# Time complexity : O(n). We traverse the list containing n elements exactly twice. The time complexity is O(n).

# Space complexity : O(1). No extra space required.