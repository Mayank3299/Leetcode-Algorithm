# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    counter = 1
    while counter <= k
        ele = nums.pop
        nums.unshift(ele)
        counter += 1
    end
    nums
end

# 2nd solution

def rotate(nums, k)
    k = k % nums.length
    
    rotated(nums, nums.length - k, nums.length - 1)
    rotated(nums, 0, nums.length - k - 1)
    rotated(nums, 0, nums.length - 1)
    nums
end

def rotated(arr, start, ending)
    i= start
    j= ending
    
    while i <= j
        arr[i], arr[j]= arr[j], arr[i]
        i += 1
        j -= 1
    end
end