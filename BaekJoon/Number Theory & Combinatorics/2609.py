import sys


x, y = map(int, sys.stdin.readline().split())
a, b = x, y

gcd = None
lcm = None

while True :
    if a == 1 or b == 1:
        gcd = 1
        break
    if a > b:
        if a%b ==0:
            gcd = b
            break
        else:
            a %= b
    else:
        if b%a ==0:
            gcd = a
            break
        else :
            b %= a

lcm = x * y // gcd

print(gcd)
print(lcm)