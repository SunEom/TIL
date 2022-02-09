N, M = map(int, input().split())

temp = []
case = []

for _ in range(N):
    temp.append(input())

for i in range(0, N-7):
    for j in range(0, M-7):
        c1 = 0
        c2 = 0

        for a in range(8):
            for b in range(8):
                if ((a+b)%2 == 0 and temp[a+i][b+j] == "B") or ((a+b)%2 == 1 and temp[a+i][b+j] == "W"):
                    c1 += 1
                
        for a in range(8):
            for b in range(8):
                if ((a+b)%2 == 1 and temp[a+i][b+j] == "B") or ((a+b)%2 ==0 and temp[a+i][b+j] == "W"):
                    c2 += 1
        case.append(min(c1,c2))


print(min(case))