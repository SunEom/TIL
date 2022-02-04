X = int(input())

group = 1
reminder = 0

while(True):
    if X<=(group*(group+1))/2:
        reminder = int(X - ((group-1)*(group))/2)
        break
    else:
        group += 1

if group % 2 == 0:
    print(f"{reminder}/{group+1-reminder}")
else:
    print(f"{group+1-reminder}/{reminder}")