def sum(number)
    # Your code here
    if number == 1
        return 1
    elsif number == 0
        return 0
    elsif number < 0
        return -1
    else
        number + sum(number - 1) 
    end
end

puts sum(-5)
puts sum(10)