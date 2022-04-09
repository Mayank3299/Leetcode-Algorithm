# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    left= 0
    right= height.length - 1
    max= 0
    while left < right
        x= [height[left], height[right]].min 
        y= right - left
        area= x * y
        max= [max, area].max
        
        if height[left] < height[right]
            left += 1
        else
            right -= 1
        end
    end
    max
end