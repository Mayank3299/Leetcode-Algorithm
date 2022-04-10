# @param {String} s
# @param {String} p
# @return {Integer[]} 
def find_anagrams(s, p)
    needs= Hash.new(0)
    p.each_char do |char|
       needs[char] += 1 
    end
    
    window= Hash.new(0)
    left,right=0,0
    match= 0
    res=[]
    
    while right < s.length
        char= s[right]
        if needs.key?(char)
            window[char] += 1
            if window[char] == needs[char]
                match += 1 
            end
        end
        right += 1
        
        while match == needs.size
            len= right - left
            if len == p.length
                res << left
            end
            char= s[left]
            if needs.key?(char)
                window[char] -= 1 
                if window[char] < needs[char]
                    match -= 1
                end
            end

            left += 1
        end
    end
    res
end