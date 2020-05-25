def gameOfThrones(s)

    string = s.chars.group_by(&:itself).map { |k,v| [k, v.count] }.to_h
    arr = []
    string.each do |el,v| 
        arr << v
    end
    arr.count{|el| el.odd? } > 1 ? 'NO' : 'YES'
   
end

p gameOfThrones('cdcdcdcdeeeef')
# cdc         cdc