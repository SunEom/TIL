t = int(input())

for _ in range(t):
    result = 0 
    x, y = map(int, input().split())
    k = [-1, 0, 1]
    temp = x
    while(temp != y-1):
        if ((temp+k[0]) == y-1) or ((temp+k[1]) == y-1) or ((temp+k[2]) == y-1):
            result += 1
            break
        else:
            result += 1
            temp += k[2]
            k = list(map(lambda x : x+k[2], k))

    print(result+1)