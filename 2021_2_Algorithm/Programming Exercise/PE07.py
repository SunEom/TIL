n, m = map(int, input().split())

def printInForamt(arr):
    for i in range(len(arr)):
        print(arr[i], end ='')
        print(' ', end='')
    print()



def printArr(arr,m):
    for i in range(1,n+1):
        if i not in arr:
            if len(arr) == m-1:
                printInForamt(arr+[i])
            else :
                printArr(arr+[i],m)

printArr([], m)