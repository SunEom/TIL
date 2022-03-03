from math import factorial
import sys


n = int(input())

for _ in range(n):
    n, m = map(int, sys.stdin.readline().split())

    if n >= m:
        print(factorial(n) // (factorial(n-m) * factorial(m)))
    else :
        print(factorial(m) // (factorial(m-n) * factorial(n)))