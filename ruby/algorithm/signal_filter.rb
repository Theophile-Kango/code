def countSignals(frequencies, filterRanges)
    # Write your code here
    first = filterRanges[0][0]
    last = filterRanges[0][1]
    filterRanges.each do |elt| 
        first = elt.first if first < elt.first 
        last = elt.last if last > elt.last
    end
    range = (first..last).to_a
    return (range & frequencies).count
end

p countSignals([8,15,14,16,21],[[10,17],[13,15],[13,17]])