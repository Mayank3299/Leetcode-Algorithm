# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
    bits= n.to_s(2)
    zeros= "0" * (32- bits.length)
    
    "#{zeros}#{bits}".reverse.to_i(2)
end