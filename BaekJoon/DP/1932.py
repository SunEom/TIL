import sys


N = int(sys.stdin.readline())

tri = []

for _ in range(N):
    tri.append(list(map(int, sys.stdin.readline().split())))

result = [tri[-1]]

tri = tri[::-1]

for floor in range(N-1):
    temp = []
    for idx in range(N-1-floor):
        value = tri[floor+1][idx] + max(result[floor][idx], result[floor][idx+1])

        temp.append(value)
    result.append(temp)

print(result[-1][0])

