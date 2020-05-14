def libraryFine(d1, m1, y1, d2, m2, y2)
    fine = 0
    if y1 > y2
        fine = 10000
    elsif m1 > m2 && y1 == y2
        fine = 500*(m1 - m2)
    elsif d1 > d2 && m1 == m2 && y1 == y2
        fine = 15*(d1-d2)
    end
    return fine
end

p libraryFine(9, 6, 2015, 6, 6, 2015)