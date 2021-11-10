n, k = map(int, input().split())
minCount = 0;
li = [];

for i in range(n):
    li.append(int(input()))

li.reverse()

for i in li:
    minCount += k // i
    k %= i

print(minCount)