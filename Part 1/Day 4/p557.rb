# @param {String} s
# @return {String}
def reverse_words(s)
    string = s.split(' ')
    string.map do |word|
        left= 0
        right= word.length - 1
        
        while left < right
            word[left], word[right]= word[right], word[left] 
            left += 1
            right -= 1
        end
    end
    
    string.join(' ')
end