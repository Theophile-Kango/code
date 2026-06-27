def find_median_sorted_arrays(nums1, nums2)
  # Always binary search on the smaller array
  if nums1.length > nums2.length
    return find_median_sorted_arrays(nums2, nums1)
  end

  m = nums1.length
  n = nums2.length

  left = 0
  right = m

  while left <= right
    i = (left + right) / 2
    j = (m + n + 1) / 2 - i

    left1  = i == 0 ? -Float::INFINITY : nums1[i - 1]
    right1 = i == m ? Float::INFINITY : nums1[i]

    left2  = j == 0 ? -Float::INFINITY : nums2[j - 1]
    right2 = j == n ? Float::INFINITY : nums2[j]

    if left1 <= right2 && left2 <= right1
      if (m + n).even?
        return ( [left1, left2].max + [right1, right2].min ) / 2.0
      else
        return [left1, left2].max
      end
    elsif left1 > right2
      right = i - 1
    else
      left = i + 1
    end
  end
end

nums1 = [1,2] 
nums2 = [3,4]

p find_median_sorted_arrays(nums1, nums2)