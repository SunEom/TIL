import sys


li = list(map(int, sys.stdin.readline().split()))
li2 = list(set(li))

if len(li2) == 1:
    print(10000+li[0]*1000)
elif len(li2) == 2:
    temp = list(filter(lambda x: li.count(x) == 2, li2))
    print(1000+temp[0]*100)
elif len(li2) == 3:
    print(max(li)*100)