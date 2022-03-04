import sys


n = int(sys.stdin.readline())

for _ in range(n):
    t = int(sys.stdin.readline())
    dict = {}
    for _ in range(t):
        name, type = sys.stdin.readline().rstrip().split()
        if type in dict.keys():
            dict[type] += 1
        else:
            dict[type] = 1

    values = list(dict.values())

    if len(values) == 1:
        print(values[0])
    else:
        result = 1
        for i in range(len(values)):
            result *= (values[i]+1)
        result -= 1
        print(result)