# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
    res= []
    solve(s, 0, res)
    res
end

def solve(str, i, res)
    nums= (0..9).to_a
    if i == str.length
        res << str.dup
        return
    end
    unless is_digit?(str[i])
        str[i]= str[i].upcase
        solve(str, i+1, res)
        str[i]= str[i].downcase
        solve(str, i+1, res)
    else
        solve(str, i+1, res)
    end
end

def is_digit?(s)
  code = s.ord
  # 48 is ASCII code of 0
  # 57 is ASCII code of 9
  48 <= code && code <= 57
end