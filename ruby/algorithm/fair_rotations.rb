def fairRations(b)
    return 'NO' if b.sum.odd?
    count = 0
    b.length.times{ |i|  count += 2 if b[i].odd? }
    count
end

puts fairRations([2, 3, 4, 5, 6])