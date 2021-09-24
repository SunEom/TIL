a = int(input())
b = temp = int(input())

while temp!=0:
    print(a*(temp%10))
    temp//=10

print(a*b)