def move_zeros(array):
    return sorted(array, key=lambda x: x == 0 and type(x) is not bool)


print(move_zeros([0, 1, None, 2, False, 1, 0]))
