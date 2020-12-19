def friend(x):
    res = []
    for l in x:
        if len(l) == 4:
            res.append(l)

    return res


print(friend(["Ryan", "Kieran", "Jason", "Yous"]))
