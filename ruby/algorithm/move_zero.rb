def move_zeroes(nums)
    left = 0
    right = 0
    while right < nums.size
        if nums[right] == 0 
            right += 1
        else
            nums[left], nums[right] = nums[right], nums[left]
            left += 1
            right += 1
        end
    end
    return nums
end

p move_zeroes([1,0,5,0,4])