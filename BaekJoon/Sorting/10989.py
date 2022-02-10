import sys


N = int(sys.stdin.readline())

result = []

for _ in range(10000):
    result.append(0)

for _ in range(N):
    num = int(sys.stdin.readline())
    result[num-1]+=1

for i in range(10000):
    for _ in range(result[i]):
        print(i+1)
    