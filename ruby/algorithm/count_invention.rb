def count_invention(array)
    array.length.times do |i|
        array.length.times do |j|
            array[i], array[j] = array[j], array[i] if array[i] < array[j]
        end
    end
    return array
end

p count_invention [10,5,7,8]