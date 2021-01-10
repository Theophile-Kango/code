def namelist(names):
    if len(names) == 1:
        return names[0]['name']
    elif len(names) < 1:
        return ''
    else:
        listnames = ""

        for index in range(len(names) - 1):
            for key in names[index]:
                listnames += f"{names[index][key]}, "

        return f"{listnames[0:-2]} & {names[-1]['name']}"

    # other solution
    # nameList = [elem['name'] for elem in names]
    #     return ' & '.join(', '.join(nameList).rsplit(', ', 1))


print(namelist([{'name': 'Bart'}, {'name': 'Lisa'}, {'name': 'Maggie'}]))
print(namelist([{'name': 'Bart'}, {'name': 'Lisa'}]))
print(namelist([{'name': 'Bart'}]))
print(namelist([]))
