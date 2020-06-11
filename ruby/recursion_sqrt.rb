def sqrt(number)
    sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
    # Your code here
<<<<<<< HEAD
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
=======
    # epsillon = 0.00001
    # current_root = (min_interval + max_interval)/2
    # current_approx = current_root**2
    # if ((current_approx - number).abs < epsillon)
    #     return current_root 
    # else
    #     if (current_approx > number)
    #         sqrt_recursive(number, min_interval, current_root)
    #     else
    #         sqrt_recursive(number, current_root, max_interval)
    #     end
    # end

    return number if (number == 0 || number == 1)
    min_interval = 1
    mid = (min_interval + max_interval)/2
    return mid if (mid**2 <= number) && ((mid + 1)**2 > number)
    if (mid**2 < number)
        return sqrt_recursive(mid+1, max_interval, number)
    else
        return sqrt_recursive(min_interval, mid-1, number)
    end
end

puts sqrt(9)
puts sqrt(16)
>>>>>>> Tried the chocolate feat
