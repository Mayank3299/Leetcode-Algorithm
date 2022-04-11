# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    rows= grid.length
    cols= grid[0].length
    
    visited= Array.new(rows) {Array.new(cols)}
    
    queue= []
    counter = 0
    dir= [[0,1],[0,-1],[1,0],[-1,0]]
    
    (0...rows).each do |i|
        (0...cols).each do |j|
            next if grid[i][j] == "0"
            if visited[i][j].nil?
                queue << [i,j]
                visited[i][j]= true
                counter += 1
                
                until queue.empty?
                    g_row, g_col= queue.shift
                    dir.each do |dir_r, dir_c|
                        point_r= dir_r + g_row
                        point_c= dir_c + g_col
                        a= point_r.between?(0, rows-1)
                        next if !a
                        b= point_c.between?(0, cols-1)
                        next if !b
                        c= visited[point_r][point_c].nil?
                        d= grid[point_r][point_c] == "1"
                        if a && b && c && d
                            queue << [point_r, point_c]
                            visited[point_r][point_c]= true
                        end
                    end
                end
            end
        end
    end
    counter
end