
def merge_intervals(array)
	size = array.size
	array.sort!{ |a,b| a[0] <=> b[0]}

	(1...size).each do |i|
		if array[i-1][1] >= array[i][0]
			array[i][0] = array[i-1][0]
			array[i][1] = array[i-1][1] if array[i-1][1] > array[i][1]
			array[i-1] = nil
		end 
	end
	array.compact!
end

array1 = [[1,9],[2,6],[8,10],[15,18]] # o/p: [[1, 10], [15, 18]]
array2 = [[1,9],[2,5],[19,20],[10,11],[12,20],[0,3],[0,1],[0,2]]  # o/p: [[0, 9], [10, 11], [12, 20]]

p merge_intervals(array1)

p merge_intervals(array2)


# Complexity Analysis

# Time complexity : O(nlogn)

# Other than the sort invocation, we do a simple linear scan of the list, so the runtime is dominated by the O(nlogn) complexity of sorting.

# Space complexity : O(logN) (or O(n))

# If we can sort intervals in place, we do not need more than constant additional space, although the sorting itself takes O(\log n)O(logn) space. Otherwise, we must allocate linear space to store a copy of intervals and sort that.