# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
    row = grid.length
    col = grid[0].length
    visited = Array.new(row) {Array.new(col)}
    dir = [[0, 1], [0, -1], [1,0], [-1,0]]
    res = 0
    
    (0...row).each do |r|
        (0...col).each do |c|
            if grid[r][c] == 0
                visited[r][c] = true
                next
            end
            ans = 0
            stack = []
            
            visited[r][c] = true
            stack.unshift([r,c])
            
            until stack.empty?
                point_r, point_c= stack.shift
                ans += 1
                dir.each do |dir_r, dir_c|
                    new_r, new_c= dir_r + point_r, dir_c + point_c
                    a= new_r.between?(0, row -1)
                    next if !a
                    b= new_c.between?(0, col - 1)
                    next if !b
                    c= grid[new_r][new_c] == 1
                    d= visited[new_r][new_c].nil?
                    if a && b && c && d
                        visited[new_r][new_c]= true
                        stack.unshift([new_r, new_c])
                    end
                end
            end
            res = [res, ans].max
        end
    end
    res
end