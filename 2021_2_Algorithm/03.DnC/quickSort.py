def partition(arr, s, e):
    pivot = arr[s]
    left = s+1
    right = e

    while left <= right:
        while  left <= right and arr[right] >= pivot:
            right-=1

        while  left <= right and arr[left] <= pivot :
            left+=1
        
        if(left <= right ):
            temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
    
    temp = arr[right]
    arr[right] = arr[s]
    arr[s] = temp
    return right

def quickSort(arr, s, e):
    if s >= e :
        return
    m = partition(arr, s, e)
    quickSort(arr, s, m-1)
    quickSort(arr, m+1, e)


a = [16, 12, 5, 38, 19, 4, 20, 27]

print(a)

quickSort(a,0,7)

print(a)
