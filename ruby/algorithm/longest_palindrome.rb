def longest_palindrome(s)
  return s if s.length < 2

  start = 0
  max_length = 1

  (0...s.length).each do |i|
    # Odd-length palindrome
    left = i
    right = i

    while left >= 0 && right < s.length && s[left] == s[right]
      if right - left + 1 > max_length
        start = left
        max_length = right - left + 1
      end
      left -= 1
      right += 1
    end

  # Even-length palindrome
  left = i
  right = i + 1

    while left >= 0 && right < s.length && s[left] == s[right]
      if right - left + 1 > max_length
        start = left
        max_length = right - left + 1
      end
      left -= 1
      right += 1
    end
  end

  s[start, max_length]
end

p longest_palindrome("babad") # bab