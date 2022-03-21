# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    left= 0
    right = nums.length - 1
    
    k = 1
    arr= []
    while (k <= nums.size)
        if nums[left].abs > nums[right].abs
            arr.unshift(nums[left]*nums[left])
            left += 1
        else
            arr.unshift(nums[right]*nums[right])
            right -= 1
        end
        k += 1
    end
    arr
end