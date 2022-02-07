T = int(input())

def isPrime(n):
    if n == 1:
        return False
    for i in range(2, int(n**0.5)+1):
        if n%i == 0:
            return False
    return True

for _ in range(T):
    n = int(input())

    for i in range(n//2, 0, -1):
        if isPrime(i) == True and isPrime(n-i) == True:
            print(str(i)+" "+str(n-i))
            break