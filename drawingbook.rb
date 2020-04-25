def pageCount(n, p)
    return 0 if p < 2
    return n.even? && n - p == 1 ? 1 : (n - p)/2 < p/2 ? (n - p)/2  : p/2 
end
p pageCount(6,5)