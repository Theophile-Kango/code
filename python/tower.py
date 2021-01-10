def tower_builder(n):
    # build here
    return [("*" * (i*2-1)).center(n*2-1) for i in range(1, n+1)]


print(tower_builder(['  *  ', ' *** ', '*****']))
