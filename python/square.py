def square_digits(num):
    # my solution
    pass
    result = []
    lst = list(map(int, str(num)))
    for elt in lst:
        result.append(elt * elt)

    return int(''.join(str(e) for e in result))


print(square_digits(1234))
