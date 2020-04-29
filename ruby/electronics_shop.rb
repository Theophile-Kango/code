def getMoneySpent(keyboards, drives, b)
    #
    # Write your code here.
    #
    max = -1
    keyboards.each do |k|
        drives.each do |d|
            max = k+d if k+d < b
        end
    end
    max
    # if keyboards.length > drives.length
    #     keyboards.length.times do |i|
    #         drives << 0 if i > drives.length - 1
    #     end
    # else
    #     drives.length.times do |i|
    #         keyboards << 0 if i > keyboards.length - 1
    #     end
    # end
    # price = [keyboards, drives].transpose.map {|x| x.reduce(:+)}
    # price.length-1.times do |i|
    #     return price[i] if (price[i] > price[i+1]) && (price[i] < b)
    # end
    

end
p getMoneySpent([40,50,60],[5,8,12],60)