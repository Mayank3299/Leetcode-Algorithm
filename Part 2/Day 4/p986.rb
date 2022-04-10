# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
    
    i,j= 0, 0
    res=[]
    while i < first_list.length && j < second_list.length
        lo= [first_list[i][0], second_list[j][0]].max    
        high= [first_list[i][1], second_list[j][1]].min
        
        res << [lo, high] if lo <= high
        
        if first_list[i][1] < second_list[j][1]
            i += 1
        else
            j += 1
        end
    end
    res
end