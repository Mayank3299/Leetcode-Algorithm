# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    low= 0
    high= numbers.length - 1
    while low < high
        sum = numbers[low] + numbers[high]
        if (sum == target)
            return [low + 1, high + 1]
        elsif sum > target
            high -= 1
        else
            low += 1
        end
    end
end