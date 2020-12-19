from itertools import groupby


def unique_in_order(iterable):
    pass
    return [k for (k, _) in groupby(iterable)]


print(unique_in_order(['']))  # ['A', 'B', 'C', 'c', 'A', 'D']
