def partition(arr, s, e):
    pivot = arr[s]
    left = s + 1
    right = e

    while left<= right:

        while left <= right and arr[right] >= pivot:
            right-=1
        while left <= right and arr[left] <= pivot:
            left +=1
        
        if left <= right:
            temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp

    temp = arr[s]
    arr[s] = arr[right]
    arr[right] = temp
    return right

def select_kth(arr, k, s, e):
    if s == e :
        return arr[s]
    
    m = partition(arr, s, e)

    if m == k:
        return arr[m]
    
    if k < m :
        select_kth(arr, k, s, m-1)
    else :
        select_kth(arr, k-m, m+1, e)

arr = [45, 1, 10, 30, 25];

print(arr)

print(f"Median of {arr} -> {select_kth(arr,2,0,4)}")
