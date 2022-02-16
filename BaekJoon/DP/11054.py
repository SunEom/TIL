import sys


N = int(input())

li = list(map(int, sys.stdin.readline().split()))
li2 = li[::-1]

dp1 = [1]*N
dp2 = [1]*N

for i in range(N):
    for j in range(i):
        if li[i] > li[j]:
            dp1[i] = max(dp1[i], dp1[j]+1)

        if li2[i] > li2[j]:
            dp2[i] = max(dp2[i], dp2[j]+1)

temp = []
dp2 = dp2[::-1]

for i in range(N):
    temp.append(dp1[i] + dp2[i])

print(max(temp)-1)