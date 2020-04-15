def palindromeIndex(s)
    s = s.downcase();
    s_arr = s.split("")
    s_r = s_arr.reverse()

    if s_arr == s_r
        return -1

    else
        del = s_arr.delete_at(0)
        s_r = s_arr.reverse()
        s_arr.length.times do |i|
            if s_arr != s_r
                s_arr.insert(i,del) 
                del = s_arr.delete_at(i + 1)
            elsif s_arr == s_r
                return i
            end    
        end
    end
   
end

p palindromeIndex("baa")