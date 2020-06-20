def find_uniq(arr)
    arr.group_by(&:itself).map{|k,v| v if v.count == 1 }.compact.flatten[0]
end