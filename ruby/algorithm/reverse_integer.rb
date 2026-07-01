def reverse(x)
  sign = x < 0 ? -1 : 1
  x *= sign

  result = 0
  max = 2**31 - 1
  min = -2**31

  while x > 0
    digit = x % 10
    x /= 10

    # check overflow before updating result
    if result > (max - digit) / 10
      return 0
    end

    result = result * 10 + digit
  end

  result * sign
end

p reverse(123)

