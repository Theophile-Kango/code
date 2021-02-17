def is_valid(s)
    stack = []
    
    i = 0
    while i < s.length
        top = stack.last
        if s[i] == "(" || s[i] == "[" || s[i] == "{"
            stack << s[i]
        elsif s[i] == ")" && top == "(" && stack.length != 0 
            stack.pop
        elsif s[i] == "]" && top == "[" && stack.length != 0 
            stack.pop
        elsif s[i] == "}" && top == "{" && stack.length != 0 
            stack.pop
        else 
            return false
        end
        i += 1
    end
    return stack.length == 0
end

p is_valid("()[]{}")