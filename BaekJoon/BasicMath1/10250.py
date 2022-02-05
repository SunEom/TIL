import math


T = int(input())

for _ in range(T):
    H, W, N = map(int, input().split())

    X = math.ceil( N / H )
    Y = N % H
    if Y == 0:
        print(H*100 + X)
    else:
        print(Y*100 + X)