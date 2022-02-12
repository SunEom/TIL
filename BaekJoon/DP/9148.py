import sys


record = {}

def w(a,b,c):
    keys = record.keys()

    if a <= 0 or b <= 0 or c <= 0:
        return 1

    if a > 20 or b > 20 or c > 20:
        if (20, 20, 20) in keys:
            return record[(20, 20, 20)]
        else:
            x = w(20, 20, 20)
            record[(20, 20, 20)] = x
            return x

    if a < b and b < c:

        if (a, b, c-1) in keys:
            x = record[(a,b,c-1)]
        else:
            x = w(a,b,c-1)
            record[(a,b,c-1)] = x

        if (a, b-1, c-1) in keys:
            y = record[(a,b-1,c-1)]
        else:
            y = w(a,b-1,c-1)
            record[(a,b-1,c-1)] = y

        if (a, b-1, c) in keys:
            z = record[(a,b-1,c)]
        else:
            z = w(a,b-1,c)
            record[(a,b-1,c)] = z
        
        return x+y-z

    if (a-1, b, c) in keys:
        x = record[(a-1, b, c)]
    else:
        x = w(a-1, b, c)
        record[(a-1, b, c)] = x

    if (a-1, b-1, c) in keys:
        y = record[(a-1, b-1, c)]
    else:
        y = w(a-1, b-1, c)
        record[(a-1, b-1, c)] = y

    if (a-1, b, c-1) in keys:
        z = record[(a-1, b, c-1)]
    else:
        z = w(a-1, b, c-1)
        record[(a-1, b, c-1)] = z

    if (a-1, b-1, c-1) in keys:
        v = record[(a-1, b-1, c-1)]
    else:
        v = w(a-1, b-1, c-1)
        record[(a-1, b-1, c-1)] = v

    return x + y + z - v


while True:
    a,b,c = map(int, sys.stdin.readline().split())
    if a == -1 and b ==-1 and c ==-1:
        break

    print(f'w({a}, {b}, {c}) = {w(a,b,c)}')