def leftmost_nodes_sum(array)
  # your code here
   sum = 0
   leng = Math.sqrt(array.length + 1).round
   leng.times do |i|
     sum += array[(2**i) - 1] 
   end
   sum
end

puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])