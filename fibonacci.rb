def fibonachi(num)
    first = 0
    second = 1
    third = first + second
    sum = 0
    while (third < num)
        sum += third if third.even?
        first = second
        second = third
        third = first + second
    end
    sum
    
end

# def yeller(arr)
#     arr.map(&:upcase).join
# end
# p yeller(['o', 'l', 'd'])

# def random_subdomain
#     ('a'..'z').to_a.shuffle[0..7].join
# end
# def string_shuffle(s)
#     s.split('').shuffle.join
# end

p fibonachi(10)