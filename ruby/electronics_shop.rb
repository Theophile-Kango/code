def getMoneySpent(keyboards, drives, b)
    #
    # Write your code here.
    #
    product_key = keyboards.product(drives)
    product_max = product_key.map(&:sum)
    product_select = product_max.select{|i| i <= b}
    return -1 if product_select.length < 1
    product_select.max
    

end
p getMoneySpent([40,50,60],[5,8,12],60)