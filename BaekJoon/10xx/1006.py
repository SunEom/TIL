t = int(input())

n, w = map(int, input().strip().split(" "))

arr1 = list(map(int, input().strip().split(" ")))
arr2 = list(map(int, input().strip().split(" ")))

for i in range(n*2):
    if min(min(arr1),min(arr2)) in arr1 : 
        idx = arr1.index(min(min(arr1),min(arr2)))
        pre, post = (idx-1+n)%n, (idx+1)%n

        temp = [ arr1[pre], arr1[post], arr2[idx]]

        temp.sort(reverse=True)

        for j in range(3):
            if arr1[idx] + temp[j] <= w:
                arr1[idx] = 99999
                if temp[j] == arr1[pre]:
                    arr1[pre] = 99999
                elif temp[j] == arr1[post]:
                    arr1[post] = 99999
                elif temp[j] == arr2[idx]:
                    arr2[idx] = 99999
                break
        
        if arr1[idx] != 99999:
            arr1[idx] = 11111
    else:
        idx = arr2.index(min(min(arr1),min(arr2)))
        pre, post = (idx-1+n)%n, (idx+1)%n

        temp = [ arr2[pre], arr2[post], arr1[idx]]

        temp.sort(reverse=True)

        for j in range(3):
            if arr2[idx] + temp[j] <= w:
                arr2[idx] = 99999
                if temp[j] == arr2[pre]:
                    arr2[pre] = 99999
                elif temp[j] == arr2[post]:
                    arr2[post] = 99999
                elif temp[j] == arr1[idx]:
                    arr1[idx] = 99999
                break
        
        if arr2[idx] != 99999:
            arr2[idx] = 11111

print(arr1)
print(arr2)
print(n*2-(arr1.count(99999)+arr2.count(99999))//2)