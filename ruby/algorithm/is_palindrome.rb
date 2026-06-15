def is_palindrome(x)
  s = x.to_s
  reverse = s.reverse
  return s == reverse
end

p is_palindrome(-101)
