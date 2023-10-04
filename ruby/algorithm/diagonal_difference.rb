def diagonalDifference(arr)
    sum_right_diag = 0
    sum_left_diag = 0
    arr.size.times do |i|
        j = (arr.size - 1) - i
        sum_right_diag += arr[i][i]
        sum_left_diag += arr[i][j]
    end
    (sum_right_diag - sum_left_diag).abs
end

arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
p diagonalDifference(arr)