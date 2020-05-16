def encryption(s)
    x = Math.sqrt(s.length).floor
    y = Math.sqrt(s.length).ceil

    str = s.chars
    
    big_arr = []
    k = 0
    x.times do |i|
        arr = []
        y.times do |j|
            arr << str[k+j]
        end
        k += y
        big_arr << arr.compact
    end
    new_arr = []
    big_arr.each do |word|
        i = 0
        while i < word.length
            new_arr << word.shift
            i += 1
        end
    end
    new_arr
end
p encryption('feedthedog')