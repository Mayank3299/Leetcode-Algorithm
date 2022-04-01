# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
    res= []
    
    backtrack(n, k, 1, [], res)
    
    res
end

def backtrack(n, k, idx, comb, res)
    if comb.length == k
        res << comb.clone
    else
       (idx..n).each do |i|
            comb << i
            backtrack(n, k, i + 1, comb, res)
            comb.pop
        end 
    end
end