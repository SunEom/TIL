from math import factorial
import sys


result = 0

n = int(sys.stdin.readline())

n = factorial(n)

while n%10 == 0:
    result+=1
    n //= 10

print(result)