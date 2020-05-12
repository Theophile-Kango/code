def pickingNumbers(a)
    # Write your code here
    #sub_arr = a.sort.each_cons(2).map{|a,b| (a-b).abs < 2 }
    b = 0
    c = a.sort - a.sort.each_cons(2).map{|a,b| a if b-a > 1 }.compact
    #b += 1 if c.length == a.length
    b = c.sort.each_cons(3).map{|a,b,c| a if  (c-a < 2) }.count 
    
end

p pickingNumbers([98, 3, 99, 1, 97, 2])