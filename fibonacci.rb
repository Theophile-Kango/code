def fibonachi(num)

    current = 0, index = 0
    arr = []
   
    arr_fibo = []

    while index < num
         index += 1
         arr.push(index)
    end
    
    arr.length.times do |x|
        if x > 1
            arr[x] = arr[x - 2] + arr[x - 1]
        end 
    end
    for val in arr do
        if val.even? and val < num
            arr_fibo.push(val)
        end
    end
    return arr_fibo.sum
    
end

p fibonachi(10)