x1, y1 = map(int, input().split())
x2, y2 = map(int, input().split())
x3, y3 = map(int, input().split())

x = list(filter(lambda x: [x1,x2,x3].count(x) == 1,[x1,x2,x3]))[0]
y = list(filter(lambda y: [y1,y2,y3].count(y) == 1,[y1,y2,y3]))[0]

print(str(x)+" "+str(y))