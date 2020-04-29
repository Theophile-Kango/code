def bubble_sort(array)
    count = 0
    swapped = false

    val = 0
 
    until swapped == true
       
        while count < array.length - 1
            count += 1
            if array[count] > array[count - 1]
                val = array[count]
                array[count] = array[count - 1]
                array[count - 1] = val
                swapped = false
                p array
            else
                swapped = true
            end
        end
       
    end

    return array
end

puts bubble_sort([50,1,9,30,5,2,20])