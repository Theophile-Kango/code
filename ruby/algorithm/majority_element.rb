#To improve
def majority_element(nums)
    #nums.tally
    max = nums.group_by(&:itself).map{|key,val| val.size }.max
    nums.group_by(&:itself).map{|key,val| key if val.size == max }.compact.first
end

p majority_element([2,2,1,1,1,1,1,1,2,2])