def sqrt(number)
    sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
    # Your code here
    epsillon = 0.00001
    current_root = (min_interval + max_interval)/2
    current_approx = current_root**2
    if ((current_approx - number).abs < epsillon)
        return current_root 
    else
        if (current_approx > number)
            sqrt_recursive(number, min_interval, current_root)
        else
            sqrt_recursive(number, current_root, max_interval)
        end
    end
end

puts sqrt(1)
puts sqrt(9)