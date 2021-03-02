
def trap(height)
	retrun 0 if height.nil? || height.empty?
	total_volume = 0
	size = height.size
	left = Array.new(size - 1)
	right = Array.new(size - 1)
	left[0] = height[0]
	right[size - 1] = height[size - 1]
	
	(1...(size)).each do |i|
		left[i] = [left[i-1], height[i]].max
	end

	(size-2).downto(0) do |j|
		right[j] = [height[j], right[j+1]].max
	end

	(0..size-1).each do |i|
    total_volume += [left[i], right[i]].min - height[i]
  end
  
 p total_volume
end

height = [0,1,0,2,1,0,1,3,2,1,2,1]
trap(height)

height = [4,2,0,3,2,5]
trap(height)

# Time complexity: O(n).

# We store the maximum heights upto a point using 2 iterations of O(n) each.
# We finally update total_volume using the stored values in O(n).
# Space complexity: O(n) extra space.
