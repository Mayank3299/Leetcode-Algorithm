# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
    if k <= 1
        return 0
    end
    
    res= 0
    left=0
    right= 0
    area= 1
    while right < nums.length
        area *= nums[right]
        while area >= k
            area /= nums[left]
            left += 1
        end
        res += right - left + 1
        right += 1
    end
    res
end