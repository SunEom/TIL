import sys


T = int(input())

cost = []
for _ in range(T):
    R, G, B = map(int, sys.stdin.readline().split())
    cost.append({"R":R, "G":G, "B":B})

def dp(prev, n, T):    
    if n == T:
        return 0

    elif n == 0:
        temp = list(filter(lambda x: x[0]!= prev , cost[n].items()))
        return min(temp[0][1] + dp(temp[0][0], n+1, T), temp[1][1] + dp(temp[1][0], n+1, T) , temp[2][1] + dp(temp[2][0], n+1, T))

    else:
        temp = list(filter(lambda x: x[0]!= prev , cost[n].items()))
        return min(temp[0][1] + dp(temp[0][0], n+1, T), temp[1][1] + dp(temp[1][0], n+1, T))

print(dp("", 0, T))