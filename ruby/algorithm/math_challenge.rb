def math_challenge(num)
    
    return num.to_s.chars.permutation.map
     { |e| e.join.to_i }.select { |n| n > num }.min
end

p math_challenge(43124)
# 11211