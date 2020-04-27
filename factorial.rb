def factorial(n)
    n == 0 ? 1 : (1..n).inject {|product,n| product * n }
end

p factorial(5)