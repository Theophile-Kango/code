def fairRations(b)
   lastID = -1
   count = 0

   b.length.times do |i|
    if b[i].odd?
        if(lastID == -1)
            lastID = i
        else
            count += (i - lastID)* 2
            lastID = -1
        end
    end
   end
   lastID == -1 ? count : 'NO'
end

puts fairRations([2, 3, 4, 5, 6])