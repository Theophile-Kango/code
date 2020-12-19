def unique_in_order(iterable):
    pass
    letter = ""
    if len(iterable) == 0:
        return []
    if len(iterable) >= 1:
        letter = iterable[0]
    i = 0
    result = [letter]

    for item in iterable:
        if item != letter:
            result.append(item)

        letter = iterable[i]
        i += 1

    return result


print(unique_in_order(['']))  # ['A', 'B', 'C', 'c', 'A', 'D']
