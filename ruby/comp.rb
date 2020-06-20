def comp(array1, array2)
    array2.map { |n| Math.sqrt(n) }.sort == array1.sort

end

p comp([2,4,8],[16,64,9])