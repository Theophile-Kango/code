def compareTriplets(a, b)
    a_length = 0
    b_length = 0
    (a.size).times do |i|
        a_length += 1 if a[i] > b[i]
        b_length += 1 if b[i] > a[i]
    end
    [a_length, b_length]
end

a = [1, 5, 3]
b = [3, 2, 1]

p compareTriplets(a,b)
# [1,1]