from statistics import median
import sys


N = int(sys.stdin.readline())

li = []
count = {}

for _ in range(N):
    num = int(sys.stdin.readline())
    li.append(num)
    if num in count.keys():
        count[num] += 1
    else :
        count[num] = 1

print(int(round(sum(li)/len(li),0)))
print(median(li))

temp = sorted(count.items(), key = lambda x: x[1], reverse=True)
temp = sorted(filter(lambda x: x[1] == temp[0][1], temp))
if len(temp) != 1 :
    print(temp[1][0])
else :
    print(temp[0][0])

print(max(li)-min(li))