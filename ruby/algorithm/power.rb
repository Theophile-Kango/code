def power(num, pow)
    val = 1
    count  = 0

    while count < pow
        val *= num
        count += 1
    end
    val
end

p power(3,3)