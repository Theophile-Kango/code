def exact_sum?(k, coins)
    #write your code here
    # if current sum equals zero, the current sub-array includes the exact sum!
  return true if k == 0
  # if the current sub-array is empty, or if the current sum less than zero
  # this branch doesn't include the exact sum
  return false if coins.empty? || k < 0
  # first recursive call recurs through with including first element of current sub-array, substract coins[0] from "k"
  # second recursive call recurs through with excluding first element of current sub-array
  exact_sum?(k - coins[0], coins[1,coins.length]) || exact_sum?(k, coins[1, coins.length])

end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false