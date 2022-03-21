# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zero_pointer = 0
    int_pointer = 0
    
    while zero_pointer < nums.length
        if nums[zero_pointer] != 0
            nums[int_pointer] = nums[zero_pointer]
            int_pointer += 1
        end
        zero_pointer += 1
    end
    
    (int_pointer...nums.length).each do |i|
       nums[i] = 0 
    end
    
    nums
end