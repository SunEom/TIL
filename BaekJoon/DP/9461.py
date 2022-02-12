import sys


T = int(input())

N = []
li = [1,1,1]

for _ in range(T):
    N.append(int(sys.stdin.readline()))

while len(li) < max(N):
    li.append(li[-3]+li[-2])

for n in N:
    print(li[n-1])