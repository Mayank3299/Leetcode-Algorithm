# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    hash = Hash.new(0)
    left = 0
    right = 0
    max = 0
    
    while right < s.length
        char1 = s[right]
        hash[char1] += 1
        right += 1
        
        while hash[char1] > 1
            char2 = s[left]
            hash[char2] -= 1
            left += 1
        end
        
        max= [max, right - left].max
    end
    max
end