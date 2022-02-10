import sys


def merge(li, s, m, e):
    i = s
    j = m+1
    k = s

    while(i <= m and j<=e):
        if li[i][0] <= li[j][0]:
            sortedList[k] = li[i]
            k+=1
            i+=1
        else:
            sortedList[k] = li[j]
            k+=1
            j+=1

    for a in range(i, m+1):
        sortedList[k] = li[a]
        k+=1


    for a in range(j, e+1):
        sortedList[k] = li[a]
        k+=1

    for a in range(s, e+1):
        li[a] = sortedList[a]

def merge_sort(li, s, e):

    mid = (s+e)//2

    if s != e:
        merge_sort(li, s, mid)
        merge_sort(li, mid+1, e)
        merge(li, s, mid, e)

sortedList = []
N = int(sys.stdin.readline())

li = []

for _ in range(N):
    age, name = sys.stdin.readline().rstrip().split()
    li.append((int(age), name))

sortedList = li.copy()

merge_sort(li, 0, len(li)-1)

for user in li:
    print(str(user[0])+ " "+ user[1])


