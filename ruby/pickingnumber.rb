def pickingNumbers(a)
    # Write your code here
    a.sort!
    
    big_arr = []
    a.length.times do |i|
        j = 0
        arr = []
        (i..a.length-1).each do |j|
            if (a[i] - a[j]).abs <= 1
                arr << a[j]
            else
                break
            end
            
        end
        
        big_arr << arr.length
    end
    big_arr.max
end

p pickingNumbers([1,1,2,2,4,4,5,5,5])