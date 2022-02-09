N, M = map(int ,input().split())

li = list(map(int, input().split()))

case = []

for i in range(0,len(li)-2):
    for j in range(i+1, len(li)-1):
        for k in range(j+1, len(li)):
            if li[i]+li[j]+li[k] <= M:
                case.append(li[i]+li[j]+li[k])
print(max(case))   