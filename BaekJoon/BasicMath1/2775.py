from audioop import reverse


T = int(input())

value = [[1,2,3,4,5,6,7,8,9,10,11,12,13,14]]

target = []
for _ in range(T):
    k = int(input())
    n = int(input())
    target.append((k,n))

maxFloor = sorted(target, key = lambda x: x[0], reverse = True)[0][0]
maxRoom = sorted(target, key = lambda x: x[1], reverse = True )[0][1]

for i in range(1, maxFloor+1):
    value.append([])
    for j in range(0,maxRoom):
        if j == 0:
            value[i].append(1)
        else:
            value[i].append(value[i][j-1]+value[i-1][j])

for (a,b) in target:
    print(value[a][b-1])