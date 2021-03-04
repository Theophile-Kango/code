def single_number(nums)
    nums.group_by(&:itself).transform_values(&:size).select{|key,val| key if val == 1}.keys[0]
end

p single_number([4,1,2,1,2])