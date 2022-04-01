# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    return [nums] if nums.length <= 1
    
    first= nums.shift
    all_permutations= permute(nums)
    
    perms= []
    all_permutations.each do |perm|
        (0..perm.length).each do |i|
            perms << perm[0...i] + [first] + perm[i..-1]
        end
    end
    perms
end


#Solution with backtracking


# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    res= []
    solve(nums, [], res)
    res
end

def solve(arr, perm, res)
    if perm.length == arr.size
        res << perm.clone
        return
    end
    
    arr.each do |i|
        next if perm.include?(i)
        perm << i
        solve(arr, perm, res)
        perm.pop
    end
end
