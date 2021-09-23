import math

num = int(input())

inputList = []

for i in range(num):
    inputList.append(list(map(int,input().split())))

for i in range(num):
    x1, y1, r1, x2, y2, r2 = inputList[i]

    distance = math.sqrt(math.pow(x1-x2,2)+math.pow(y1-y2,2))

    if distance == 0 and r1 == r2:
        print(-1)
    elif math.fabs(r1-r2) < distance and distance < r1+r2 :
        print(2)
    elif distance == r1+r2 or distance == math.fabs(r1-r2):
        print(1)
    else:
        print(0)