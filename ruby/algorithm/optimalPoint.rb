def optimalPoint(magic, dist)
    # Write your code here
    res = magic[0]
    magic.length.times do |i|
        j = i + 1
        k = i + 2
        k = 0 if k == magic.length - 1 
        l = 0 if k == 0
        # magic[-1] = 0 if k > magic.length - 1
        # magic[k] = magic[-1]
        # j = 0 if j > magic.length - 1
        # res += dist[j] + magic[k]
       # magic[k] = 0 if k == 0
       p "#{k} #{l}"
    end 
    #return res
end

optimalPoint([2,4,5,2],[4,3,1,3])