n, x = map(int, input().split())

li = list(map(int, input().split()))

li = list(filter(lambda a : a<x, li))

result = ""
for i in range(len(li)):
    result+=str(li[i])+" "


print(result.rstrip())