def equalizeArray(arr)
    arr.sort

    big_arr = []

    arr.length.times do |i|
        new_arr = []
        (i..arr.length-1).each do |j|
            if (arr[i] - arr[j] == 0)
                new_arr << arr[i]
            end
            big_arr << new_arr.length
        end
    
    end
    arr.length - big_arr.max
    
end

p equalizeArray([1, 2, 3, 1, 2, 3, 3, 3])