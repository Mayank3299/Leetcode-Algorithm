# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    left= 0
    right= matrix.length * matrix[0].length - 1
    
    while left <= right
        index= left + (right-left)/2
        row= index / matrix[0].length
        col= index % matrix[0].length
        
        if target == matrix[row][col]
            return true
        elsif target > matrix[row][col]
            left= index + 1
        else
            right= index - 1
        end
    end
    false
end