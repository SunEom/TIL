n = int(input())
li = list(map(int, input().split()))
result = 0

li.sort()

for i in range(len(li)):
    result += li[i]*(len(li)-i)

print(result)