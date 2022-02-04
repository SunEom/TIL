N = int(input())

k = 1
while(True):
    if N <= 3*k*(k-1)+1:
        break
    k+=1
    
print(k)
