import math


M = int(input())
N = int(input())

def isPrime(n):
    if n == 1 :
        return False
    
    for i in range(2, math.floor(math.sqrt(n))+1):
        if n%i == 0:
            return False
    return True


result = []

for i in range(M,N+1):
    if isPrime(i) == True:
        result.append(i)

if len(result) == 0:
    print(-1)
else:
    print(sum(result))
    print(result[0])