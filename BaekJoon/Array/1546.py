import sys

length = int(input())
arr = list(map(int, sys.stdin.readline().split()))

maxNum = max(arr)

for i in range(len(arr)):
    arr[i] = float(arr[i]) / maxNum * 100

print(sum(arr)/len(arr))