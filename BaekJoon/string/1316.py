import sys

count = int(sys.stdin.readline().rstrip())

result = 0

for _ in range(count):
    string = sys.stdin.readline().rstrip()
    temp = []
    for i in range(len(string)):
        if (string[i] not in temp):
            temp.append(string[i])
        elif (temp[-1] == string[i]):
            temp.append(string[i])
        else:
            break

        if (i == len(string)-1):
            result += 1

print(result)
