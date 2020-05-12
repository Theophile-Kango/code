def sqrt(number)
    sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
    # Your code here
    min_interval = 0
    if max_interval - min_interval <= 0
        return - 1
    else
        max_interval = number / 2
        #return 1 if number == 1
        return max_interval
        #return max_interval if max_interval * max_interval = number
    end
    
end

puts sqrt(1)
puts sqrt(4)