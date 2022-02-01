import sys

arrLen = int(input())
arr = list(map(int, sys.stdin.readline().split()))

print(str(min(arr)) + " " + str(max(arr)))