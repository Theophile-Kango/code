def angryProfessor(k, a)
    on_time = a.select{|i| i <= 0 } 
    on_time.length < k ? 'YES' : 'NO'
end

p angryProfessor(3, [-1, -3, 4, 2])