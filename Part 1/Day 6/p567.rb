# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    left = 0
    right = 0
    
    need= Hash.new(0)
    window= Hash.new(0)
    match = 0
    
    s1.each_char do |char|
        need[char] += 1
    end
    
    while right < s2.length
        char= s2[right]
        window[char] += 1
        if window[char] == need[char]
           match += 1 
        end
        
        while match == need.size
           if (right - left + 1) == s1.length
               return true
           else
               char1 = s2[left]
               window[char1] -= 1
               if window[char1] < need[char1]
                   match -= 1
               end
               left += 1
           end
        end
        
        right += 1
    end
    
    false
end