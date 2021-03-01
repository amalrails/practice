def two_sum(arr, sum)
	arr_hash = {}
	arr.each_with_index { |item, index| arr_hash[:ele] = index } # o(n)
	arr.each_with_index do |item, index| # o(n)
		number = sum - item
		return [index, arr_hash[:ele]] if arr_hash[:number]
	end
	p 'no elements summing up'
end
