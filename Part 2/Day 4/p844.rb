# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    check(s) == check(t)
end

def check(str)
    arr=[]
    str.each_char do |char|
       if char != '#'
           arr << char
       elsif !arr.empty?
           arr.pop
       end
    end
    arr
end