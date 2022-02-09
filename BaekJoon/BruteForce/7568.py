N = int(input())

temp = []

for _ in range(N):
    (x, y) = (map(int, input().split()))
    temp.append((x,y))

result = ""
for p in temp:
    result += str(len(list(filter(lambda x: p[0]<x[0] and p[1] < x[1], temp)))+1)+" "

print(result.rstrip())