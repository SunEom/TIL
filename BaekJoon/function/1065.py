num = int(input())

count = 0

def isHan(a):
    if(a<100):
        return True
    while (a>=100):
        first = a%10
        second = (a%100)//10
        third = (a%1000)//100

        if(third-second != second-first):
            return False
        a//=10
        
    return True
        
for i in range(1,num+1):
    if(isHan(i)):
        count+=1

print(count)


    
