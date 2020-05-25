def encryption(s)
    x = Math.sqrt(s.length).floor
    y = Math.sqrt(s.length).ceil
    s = s.gsub(/\s+/, '')

    string = []
    j = 0
    k = 0
    y.times do |i|
        (s.length % x == 0) && (s.length % y != 0) ? l = 0 : l = 1
        while j < s.length do |n|
            
            string << s[j] 
            if s.length % x != 0 && s.length % y != 0
                string << ' ' if l == x || l  == y-n
            else
                string << ' ' if l == x
            end
            j += y
            l += 1
        end
        k += 1
        j = 0
        j += k
    end
    
    string.join.strip
end
p encryption('feedthedog')
#hae and via ecy