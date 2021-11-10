li = [500, 100, 50, 10, 5, 1]
minCount = 0

n = int(input())

x = 1000-n

for i in li:
    minCount += x//i
    x%=i

print(minCount)
