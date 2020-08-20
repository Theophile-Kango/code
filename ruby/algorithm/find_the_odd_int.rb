def find_it(seq)
    #your code here
    seq.group_by(&:itself).map{|k,v| v if v.count.odd?  }.compact.flatten[0]
    #seq.detect { |n| seq.count(n).odd? }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])