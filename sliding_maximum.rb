def sliding_maximum(k, array)
  # your code here
  result = []
  l = k - 2
  u = k
  val = 1
  array.each do |i|
    if k < array.length
      val += 1
    end
    k += 1
  end
  
  if array[0] > array[1]
    array[0],array[1] = array[1], array[0]
  end
  if u == 4
   if array[1] > array[2]
    array[1],array[2] = array[2], array[1]
   end
  end
  

  val.times do |j|
    if array[j+l] > array[j+1+l]
      result << array[j+l]
    else
      result << array[j+1+l]
    end 
  end
  result
end
  
  p sliding_maximum(3, [9, 3, 5, 1, 7, 10])
  # => [5, 7, 9, 9]
  