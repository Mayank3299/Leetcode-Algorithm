# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
    row = mat.length
    col = mat[0].length
    dirs= [[0,1],[0,-1],[1,0],[-1,0]]
    visited = Array.new(row) {Array.new(col)}
    queue = []
    
    (0...row).each do |r|
       (0...col).each do |c|
            if mat[r][c] == 0
               queue << [r,c] 
            end
       end
    end
    
    until queue.empty?
        r, c = queue.shift
        visited[r][c]= true
        
        dirs.each do |dir_r, dir_c|
            point_r = r + dir_r
            point_c = c + dir_c
            
            a= point_r.between?(0,row-1)
            next if !a
            b= point_c.between?(0,col-1)
            next if !b
            
            c1= mat[point_r][point_c] != 0
            
            d= visited[point_r][point_c].nil?
            
            if a && b && c1 && d
                mat[point_r][point_c] = mat[r][c] + 1
                visited[point_r][point_c] = true
                queue << [point_r, point_c]
            end
        end
    end
    
    mat
end