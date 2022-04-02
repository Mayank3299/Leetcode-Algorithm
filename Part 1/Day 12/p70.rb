#1- https://www.youtube.com/watch?v=ftpbBbtyxdE
#2- https://www.youtube.com/watch?v=Y0lT9Fck7qI
#3- https://www.youtube.com/watch?v=RrFg9SZ8VoM MAIN VIDEO

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n < 2
    
    n_minus_1= 1
    n_minus_2= 1
    total= 0
    
    (2..n).each do |_i|
        total= n_minus_1 + n_minus_2
        n_minus_2= n_minus_1
        n_minus_1= total
    end
    
    total
end