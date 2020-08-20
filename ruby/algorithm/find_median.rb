def findMedian(arr)
    res = arr.sort
    res[(arr.length/2).ceil]
end

p findMedian([0, 1, 2, 4, 6, 5, 3])