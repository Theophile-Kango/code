def three_sum(nums)
  result = []

  nums.sort!

  nums.each_with_index do |num, i|
    # Skip duplicate first numbers
    next if i > 0 && nums[i] == nums[i - 1]

    left = i + 1
    right = nums.length - 1

    while left < right
      sum = num + nums[left] + nums[right]

      if sum == 0
        result << [num, nums[left], nums[right]]

        # Skip duplicates
        left += 1
        right -= 1

        while left < right && nums[left] == nums[left - 1]
          left += 1
        end

        while left < right && nums[right] == nums[right + 1]
          right -= 1
        end

      elsif sum < 0
        left += 1
      else
        right -= 1
      end
    end
  end

  result
end

nums = [-1,0,1,2,-1,-4]

p three_sum(nums)