result = []

n = int(input())

for  i in range(n//5, -1, -1):
    temp = n - i*5
    if temp % 3 == 0:
        result.append(i+temp//3)

if len(result) == 0 :
    print(-1)
else:
    print(sorted(result)[0])