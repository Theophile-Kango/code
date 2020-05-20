def beautifulTriplets(d, arr)
    count = 0
    arr.length.times do |i|
        (i..arr.length-1).each do |j|
            if ((arr[i] + d) == arr[j]) && (arr.include?(arr[j] + d))
                count += 1
            end
        end
    end
    count
end

p beautifulTriplets(3, [1, 2, 4, 5, 7, 8, 10])