import math


a, b, c = map(int, input().split())


if (b > c) or (b == c and a > 0):
    print(-1)
else :
    num = a / (c-b)
    if num == a//(c-b):
        num += 1
    else:
        num = math.ceil(num)

    print(int(num))