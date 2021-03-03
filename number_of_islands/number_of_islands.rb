# DFS approach
require 'byebug'
def number_of_islands(grid)
	return 0 if grid.empty? || !grid.flatten.include?('1') || grid.nil? 
  @m = grid.size - 1
  @n = grid[0].size - 1
  num_islands = 0
  (0...@m).each do |i|
  	(0...@n).each do |j|
  		if grid[i][j] == '1'
  			num_islands +=1 
  			bfs(grid, i, j)
  		end
  	end
  end
  num_islands
end


def bfs(grid, row, col)
	return 0 if (row < 0) || (row > @m) || (col < 0) || (col > @n) || grid[row][col] == '0'
	grid[row][col] = '0'
	bfs(grid, row -1, col) 
	bfs(grid, row +1, col) 
	bfs(grid, row, col -1) 
	bfs(grid, row, col +1) 
end

grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]

p number_of_islands(grid)


# Complexity Analysis

# Time complexity : O(M×N) where M is the number of rows and N is the number of columns.

# Space complexity : worst case O(M×N) in case that the grid map is filled with lands where DFS goes by M×N deep.



# BFS approach


# def number_of_islands(grid)
# 	return 0 if grid.nil? || grid.empty? || !grid.flatten.include?('1')

# 	stack = []
# 	@m = grid.size
# 	@n = grid[0].size
# 	num_islands = 0
# 	(0...@m).each do |i|
# 		(0...@n).each do |j|
# 			if grid[i][j] == '1'
# 				num_islands += 1
# 				stack << [i, j]
# 				while(!stack.empty?)
# 					row_col = stack.pop
# 					row = row_col[0]
# 					col = row_col[1]
# 					bfs(grid, row, col) 
# 				end
# 			end
# 		end
# 	end

# 	num_islands
# end

# def bfs(grid, row, col)
# 	return if col >= @n || row < 0 || col < 0 || row >= @m || grid[row][col] == '0'
	
# 	grid[row][col] = '0'
# 	bfs(grid, row, col - 1)
# 	bfs(grid, row, col + 1)
# 	bfs(grid, row - 1, col)
# 	bfs(grid, row + 1, col)
# end

# grid = [
#   ["1","1","0","0","0"],
#   ["1","1","0","0","0"],
#   ["0","0","1","0","0"],
#   ["0","0","0","1","1"]
# ]

# p number_of_islands(grid)


# Time complexity : O(M×N) where M is the number of rows and N is the number of columns.

# Space complexity : O(min(M,N)) because in worst case where the grid is filled with lands, the size of queue can grow up to min(M,N).

