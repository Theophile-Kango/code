def repeatedString(s, n)
    quot = n/s.length
    mod = n % s.length
    str = s[0...mod].count('a')
    res = quot * s.count('a') + str
    res
end
p repeatedString('aba',1000)