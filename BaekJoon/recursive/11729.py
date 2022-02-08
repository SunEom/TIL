sequence = []

def hanoi(s, d, t, n):
    if n == 1:
        sequence.append((s,d))
    else:
        hanoi(s,t,d,n-1)
        sequence.append((s,d))
        hanoi(t, d, s, n-1)


n = int(input())
hanoi(1,3,2,n)

print(len(sequence))
for (a,b) in sequence:
    print(str(a)+" "+str(b))