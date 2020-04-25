def two_sum(nums, target)
    #nums = nums.delete_if{|el| el > target}
    res = []
    loop do
        test = false
        nums.length.times do |i|
            if nums[i] + 2 == target
                res << i
                res << i+1
                test = true
            end
        end
        break unless test
    end
    res
end
p two_sum([2, 7, 11, 15],9)