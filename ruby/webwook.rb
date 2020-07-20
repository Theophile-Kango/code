def workbook(n, k, arr)
    count = 0
    res_arr = []
    arr.each do |elt|
        (elt/k).times do |val|
            res_arr << k + (k * val)
        end
        res_arr << elt if (elt % k) != 0
    end
    count += 1 if (res_arr[0] >= 1)
    res_arr.length.times do |i|
        count += 1 if (res_arr[i] >= (i + 1) && res_arr[i - 1] < (i + 1))
    end
    count
end

p workbook(5,3,[4, 2, 6, 1, 10])