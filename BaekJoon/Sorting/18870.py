import sys

N = int(sys.stdin.readline())

li = list(map(int, sys.stdin.readline().split()))

temp = sorted(list(set(li)))

count = {}

i = 0
while i < len(temp):
    if temp[i] not in count.keys():
        count[temp[i]] = i
    i+=1

for num in li:
    print(count[num], end =" ")