def anagram(s)
    if(s.length.odd?)
    return -1
    else 
        half_string_left = s[0, (s.length / 2)].split("").sort()
        half_string_right = s[(s.length / 2), s.length].split("").sort()
        count = half_string_left.length
        half_string_left.length.times do |i|
            if half_string_left[i] == half_string_right[i]
                count -= 1
            end
        end
    end
    return count
end

puts anagram("xaxbbbxx")