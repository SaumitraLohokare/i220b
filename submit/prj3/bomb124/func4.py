def func4(a, b):
    if a == 0 or a == 1:
        return a
    temp1 = b
    temp2 = a
    res = func4(a - 1, b)
    temp3 = res + b
    res2 = func4(a - 2, b)
    return res2 + temp3

print(func4(5, 4))