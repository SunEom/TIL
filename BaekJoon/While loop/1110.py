n = int(input())
changed = -1
count=0;

while n != changed:
    if changed == -1:
        changed = n
    a = changed//10%10
    b = changed%10
    changed = b*10+((a+b)%10)
    count+=1

print(count)