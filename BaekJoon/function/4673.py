nonSelf = []

for i in range(1,10001):
    result = i
    while(i != 0):
        result += (i%10)
        i//=10
    if(result < 10000 and nonSelf.count(result) == 0):
        nonSelf.append(result)

for i in range(1, 10000):
    if(nonSelf.count(i) == 0):
        print(i)