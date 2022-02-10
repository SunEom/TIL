import sys


N = int(sys.stdin.readline())

li = []

for _ in range(N):
    x ,y = map(int, sys.stdin.readline().rstrip().split())
    li.append((x,y))

for point in sorted(li, key = lambda p: (p[0],p[1])):
    print(str(point[0])+ " " + str(point[1]))
