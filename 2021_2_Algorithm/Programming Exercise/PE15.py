from heapq import heappop, heappush 

v, e = map(int, input().split())
h = []
s = []

def findRoot(i):
    while s[i] != -1:
        i = s[i]
    return i;

def union(a, b):
    s[b] = a

for i in range(v):
    s.append(-1)

for i in range(e):
    a, b, c = map(int, input().split())
    a -= 1
    b -= 1
    heappush(h,[c,a,b])

count = 0
result = 0

while(count < v-1 and len(h) > 0):
    [c, a, b] = heappop(h)
    ra = findRoot(a)
    rb = findRoot(b)
    if ra != rb:
        union(ra, rb)
        result += c
        count += 1
print(result)