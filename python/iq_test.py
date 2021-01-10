def iq_test(numbers):
    # your code here
    i = 0
    res_even = []
    res_odd = []
    numbers = numbers.split(' ')
    while(i < len(numbers)):
        if int(numbers[i]) % 2 == 0:
            res_even.append(i+1)
        else:
            res_odd.append(i+1)
        i += 1

    if len(res_odd) > len(res_even):
        return res_even[0]
    else:
        return res_odd[0]


print(iq_test("1 2 2"))
