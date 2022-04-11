# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
    len= Float::INFINITY
    left= 0
    right= 0
    sum= 0
    while right < nums.length
        sum += nums[right]
        
        while sum >= target
            len= [right - left + 1, len].min
            sum-= nums[left]
            left += 1
        end
        right += 1
    end
    len == Float::INFINITY ? 0 : len
end