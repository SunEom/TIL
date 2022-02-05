import math


def isPrime(n):
    if n == 1:
        return False
        
    for i in range(2, math.floor(math.sqrt(n))+1):
        if n % i == 0:
            return False

    return True

number = int(input())

li = list(map(int, input().split()))

count = 0

for n in li:
    if isPrime(n) == True:
        count += 1

print(count)