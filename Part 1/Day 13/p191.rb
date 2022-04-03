# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    n.to_s(2).count("1")
end


# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    counter= 0
    
    while n > 0
        n= n & (n-1)
        counter += 1
    end
    
    counter
end