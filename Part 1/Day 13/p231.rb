# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    return n > 0 && n.to_s(2).count("1") == 1
end