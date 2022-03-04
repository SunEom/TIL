import sys
import math

n = int(sys.stdin.readline())

li = list(map(int, sys.stdin.readline().split()))

for i in range(1, len(li)):
    gcd = math.gcd(li[0], li[i])
    li[i] //= gcd
    print(f"{li[0]//gcd}/{li[i]}")