# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    res=[]
    nums.sort!
    (0...nums.length - 2).each do |i|
        if i > 0 && nums[i] == nums[i-1]
            next
        end
        target= 0-nums[i]
        low= i + 1
        high= nums.length - 1
        while low < high
            if nums[low] + nums[high] == target
                ans= [nums[i], nums[low], nums[high]]
                res << ans
                low += 1
                high -= 1
                while low < high && nums[low] == nums[low - 1]
                    low += 1
                end
                while low < high && nums[high] == nums[high+1]
                    high -= 1
                end
            elsif (nums[low]+nums[high]) > target
                high -= 1
            else
                low += 1
            end
        end
    end
    res
end