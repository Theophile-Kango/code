def fibonachi(n)
    res = []

    (0..n).each do |n|
        if n < 2
            res << n
        else
            res << res[-1] + res[-2]
        end
    end
    res.last
end

def fibonachi_rec(n)
    n < 2 ? 1 : fibonachi_rec(n - 1) + fibonachi_rec(n - 2) 
end

p fibonachi(5)