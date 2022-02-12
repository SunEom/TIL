import sys

global result

N = int(sys.stdin.readline())

result = 0
points = [(x,y) for x in range(N) for y in range(N)]


def solve(li, N, count):
    global result

    if count == N:
        result +=1
    
    elif len(li) + count < N:
        return

    else:
        for p in li:
            temp = [x for x in li if p[0] != x[0] if p[1] != x[1] if abs(x[0]-p[0])!= abs(x[1]-p[1])]
            print(temp)
            solve(temp, N, count+1)

solve(points, N, 0)

print(result)