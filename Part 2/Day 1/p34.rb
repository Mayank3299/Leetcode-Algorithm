# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    left= bins(nums, target, true)
    right= bins(nums, target, false)
    
    [left, right]
end

def bins(nums, target, left_biased)
    left= 0
    right= nums.length - 1
    index= -1
    while left <= right
        middle= left + (right-left)/2
        if target > nums[middle]
            left= middle + 1
        elsif target < nums[middle]
            right= middle - 1
        else
            index= middle
            if left_biased
                right= middle - 1
            else
                left= middle + 1
            end
        end
    end
    index
end