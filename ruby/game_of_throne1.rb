def gameOfThrones(s)

    string = s.chars.group_by(&:itself).map { |k,v| v.count }
    string.count{|el| el.odd? } > 1 ? 'NO' : 'YES'

end

p gameOfThrones('cdcdcdcdeeeef')
# cdc         cdc