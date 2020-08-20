def findDigits(n)
    n.to_s.split('').map(&:to_i).select{|e| e != 0 && n % e == 0}.length
end

p findDigits(1012)