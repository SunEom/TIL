import sys


n = int(sys.stdin.readline())

li = []

for _ in range(n):
    a, b = map(int, sys.stdin.readline().split())
    li.append((a,b))

li.sort(key = lambda x: (x[1], x[0]))

result = 0

end = 0 
for s, e in li:
    if s >= end:
        result +=1
        end = e
print(result)