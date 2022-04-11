# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(grid)
    rows= grid.length
    
    visited= Array.new(rows)
    counter= 0
    (0...rows).each do |i|
        if visited[i].nil?
            dfs(grid, visited, i)
            counter += 1 
        end
    end
    counter
end

def dfs(grid, visited, i)
    grid.length.times do |j|
       if grid[i][j] == 1 && visited[j].nil?
            visited[j] = 1
            dfs(grid, visited, j) 
       end
    end
end