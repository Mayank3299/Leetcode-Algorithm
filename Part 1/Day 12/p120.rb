# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    
    dp= Array.new(triangle.length + 1, 0)
    
    triangle.reverse_each do |row|
        arr=[]
        row.each_with_index do |val, i|
            dp[i]= val + [dp[i], dp[i+1]].min
        end
    end
    
    dp[0]
end