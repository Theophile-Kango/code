def factorial(n)
    n == 0 ? 1 : (1..n).inject {|product,n| product * n }
end
def factorial_recursion(n)
    n == 0 ? 1 : n * factorial_recursion(n - 1)
end
p factorial_recursion(1)