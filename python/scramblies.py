def scramble(s1, s2):
    # your code here
    # for w1 in s1:
    #     for w2 in s2:
    #         if w1 == w2:
    #             s2 = s2.replace(w2, "")

    # return "" == s2
    for c in set(s2):
        if s1.count(c) < s2.count(c):
            return False
    return True


print(scramble('rkqodlw', 'world'))
print(scramble('cedewaraaossoqqyt', 'codewars'))
print(scramble('katas', 'steak'))
print(scramble('scriptjava', 'javascript'))
print(scramble('scriptingjava', 'javascript'))
