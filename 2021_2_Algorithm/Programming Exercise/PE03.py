a, b, c = map(int, input().split())

def func(a, b, c):
    if b == 0:
        return 1
    
    if b%2 == 1:
        temp = func(a,(b-1)/2,c)
        return ((a%c) *(temp%c)**2)%c
    else:
        temp = func(a,b/2,c)
        return ((temp%c)**2)%c

print(func(a,b,c))