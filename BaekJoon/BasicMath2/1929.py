import math


M, N = map(int, input().split())

def isPrime(n):
    if n == 1:
        return False
    for i in range(2, math.floor(math.sqrt(n))+1):
        if n%i == 0:
            return False
    return True

for n in range(M, N+1):
    if isPrime(n) == True:
        print(n)
