# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    val= 1
    nums.each do |num|
       val ^= num 
    end
    
    val ^ 1
end