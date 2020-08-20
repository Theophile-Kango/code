def halving_sum(n)
    # your code here
     i = 1
     res = 0
    while(n/i > 1)
      i *= 2 
      res += n/i
    end
    res + n
    # r = 0
    # r += n and n >>= 1 while n > 0
    # r

    
  end
p  halving_sum(25)
