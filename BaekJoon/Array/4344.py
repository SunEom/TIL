import sys

c = int(input())

for _ in range(c):
    arr = list(map(int, sys.stdin.readline().split()))
    arr = arr [1:]
    avg = sum(arr)/len(arr)
    upper = [ x for x in arr if x > avg]
    rate = float(len(upper)) / len(arr) *100
    print("{:.3f}%".format(rate))
