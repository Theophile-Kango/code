# def bubble_sort (array)
#     n = array.length
#     loop do
#         swapped = false
#         (n - 1).times do |i|
#             if array[i] > array[i + 1]
#                 array[i], array[i + 1] = array[i + 1], array[i]
#                 swapped = true
#             end
#         end
#         break if not swapped
#     end
#     array
# end

# puts bubble_sort([50,1,9,30,5,2,20])
def bubble_sort array 
    array.size.times do |i|
        (array[i+1..-1].size+1).times do |j|
            if(array[j+i] < array[i])
                array[j+i],array[i] = array[i],array[j+i]
            end
        end
    end
    return array
end

p bubble_sort([50,1,9,30,5,2,20])