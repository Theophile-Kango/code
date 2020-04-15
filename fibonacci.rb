def fibonachi(num)
    first = 0
    second = 1
    third = first + second
    sum = 0
    while (third < num)
        sum += third if third.even?
        first = second
        second = third
        third = first + second
    end
    sum
    
end

p fibonachi(10)