sol=[0]*(10**6+1)
sol[1]=0
for i in range(2,10**6+1):
    if i%6==0:
        sol[i]=min(sol[i//3]+1,sol[i//2]+1,sol[i-1]+1)
    elif i%3==0:
        sol[i]=min(sol[i//3]+1,sol[i-1]+1)
    elif i%2==0:
        sol[i]=min(sol[i//2]+1,sol[i-1]+1)
    else:
        sol[i]=d[i-1]+1
print(d[int(input())])