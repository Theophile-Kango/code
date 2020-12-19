def move_zeros(array):
    zero_list = list(
        filter(lambda a: a == 0 and not isinstance(a, bool), array))
    result = list(
        filter(lambda a: a != 0 or isinstance(a, bool), array)) + zero_list
    return result


print(move_zeros([0, 1, None, 2, False, 1, 0]))
