# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left= 0
    right= nums.length - 1
    
    while left < right
        middle= left + (right-left)/2
        if nums[middle] > nums[right]
            left= middle + 1
        else
            right= middle
        end
    end
    
    start= left
    left= 0
    right= nums.length - 1
    
    if target >= nums[start] && target <= nums[right]
        left= start
    else
        right= start
    end
       
   while left <= right
       mid= left +(right-left)/2
       if target == nums[mid]
           return mid
       elsif target > nums[mid]
           left= mid + 1
       else
           right= mid - 1
       end
   end
    -1
end