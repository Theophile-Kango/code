def anagram(s)
    return -1 if s.length.odd?
    left = s[0...s.length/2].chars
    right = s[s.length/2..-1].chars
    count = 0
    right.uniq.each do |i|
        count += right.count(i) - left.count(i) if right.count(i) > left.count(i)
    end
    count
end

puts anagram("xaxbbbxx")