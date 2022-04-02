#1- https://www.youtube.com/watch?v=ZwDDLAeeBM0

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    dp= Array.new(nums.length + 1)
    
    dp[0]= 0
    dp[1]= nums[0]
    
    (1...nums.length).each do |i|
       dp[i+1] = [dp[i], dp[i-1] + nums[i]].max 
    end
    
    dp[-1]
end