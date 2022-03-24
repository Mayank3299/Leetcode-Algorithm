# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
DISHA = [
    [-1, 0],
    [0, 1],
    [1, 0],
    [0, -1]
]

def flood_fill(image, sr, sc, new_color)
    queue= []
    rows = image.size
    columns = image[0].size
    color = image[sr][sc]
    visited = Array.new(rows).map{ Array.new(columns)}
    visited[sr][sc] = true
    queue << [sr,sc]
    until queue.empty?
        pixel = queue.shift
        image[pixel[0]][pixel[-1]] = new_color
        neighbours = get_neighbours(pixel)
        neighbours.each do |test|
            a= test[0].between?(0, rows-1)
            next if !a
            b= test[-1].between?(0, columns-1)
            next if !b
            c= visited[test[0]][test[-1]].nil?
            d= image[test[0]][test[-1]] == color
            if a && b && c && d
                visited[test[0]][test[-1]] = true
                queue << test
            end
        end
    end
    image
end

def get_neighbours(arr)
    neighbours=[]
    DISHA.each do |row, col|
        neighbours << [arr[0] + row, arr[-1] + col]
    end
    
    neighbours
end