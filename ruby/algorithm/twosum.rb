def two_sum(nums, target)
    hash = nums.map.with_index.to_h
    pair = []
    i = 0
    foundPair = false 
    complement = 0
    while(i < nums.size) && !foundPair do
        complement = target - nums[i]
        
        if hash.has_key?(complement)
            if i != hash[complement]
                pair << i
                pair << hash[complement]
                foundPair = true
            end
        end
        i += 1
    end
    return pair
end
p two_sum([3, 3],6)