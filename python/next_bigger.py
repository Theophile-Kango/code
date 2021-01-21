def next_bigger(n):
    numbers = [int(x) for x in str(n)]
    numbers.sort()
    numbers.reverse()
    return int(''.join(str(i) for i in numbers))
    #int(''.join(str(int(d)**2) for d in str(num)))


print(next_bigger(2153))
