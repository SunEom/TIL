import math

n = int(input())
fibo = [1,2]
lastIndex = 1

while(len(fibo) < n):
    fibo.append((fibo[lastIndex-1]+fibo[lastIndex])%10007)
    lastIndex+=1


print(fibo[n-1])