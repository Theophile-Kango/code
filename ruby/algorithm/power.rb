def power(num, pow)
    val = 1
    count  = 0

    while count < pow
        val *= num
        count += 1
    end
    val
end

def pow_util(x, n)
    return 1  if (n == 0)
    return x if (n == 1)
    return pow_util(1 / x, -n) if (n < 0)
    result = pow_util(x * x, n / 2)
    result *= x if (n % 2)
    return result
end
  
def myPower(x, n)
    return pow_util(x, n)
end
  
p myPower(2, -2)
# p power(3,3)