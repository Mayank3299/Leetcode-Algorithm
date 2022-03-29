# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
    row= grid.length
    col= grid[0].length
    visited= Array.new(row) {Array.new(col)}
    dirs= [[0,1],[0,-1],[1,0],[-1,0]]
    queue= []
    counter = 0
    fresh = 0
    
    (0...row).each do |r|
       (0...col).each do |c|
          if grid[r][c] == 2
             queue << [r,c] 
          elsif grid[r][c] == 1 
              fresh += 1
          end
       end
    end
    
    return 0 if fresh == 0
        
    until queue.empty?
        counter += 1
        queue.length.times do 
            r, c = queue.shift
            visited[r][c] = true
        
            dirs.each do |dir_r, dir_c|
                point_r= r + dir_r
                point_c= c + dir_c

                a= point_r.between?(0,row-1)
                next if !a

                b= point_c.between?(0, col-1)
                next if !b

                c1= grid[point_r][point_c] == 1

                d= visited[point_r][point_c].nil?

                if a && b && c1 && d
                    grid[point_r][point_c] = 2
                    visited[point_r][point_c] = true
                    queue << [point_r, point_c]
                    fresh -= 1
                end
            end 
        end
    end
    fresh == 0 ? counter - 1 : -1
end