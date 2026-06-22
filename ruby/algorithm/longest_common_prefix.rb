def longest_common_prefix(strs)
  return "" if strs.empty?

  first = strs.first

  first.chars.each_with_index do |char, i|
    strs[1..].each do |str|
      return first[0...i] if i >= str.length || str[i] != char
    end
  end

  first
end

strs = ["flower","flow","flight"]
p longest_common_prefix(strs) # fl