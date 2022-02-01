a = int(input())
b = int(input())
c = int(input())

arr = [0,0,0,0,0,0,0,0,0,0]
num = a * b * c

while (num != 0):
    arr[num%10]+=1
    num//=10

for i in arr:
    print(i)

