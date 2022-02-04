import sys

result = {}

string = sys.stdin.readline().rstrip()
for i in range(len(string)):
    if (result.get(string[i].upper()) == None):
        result[string[i].upper()] = 1
    else :
        result[string[i].upper()] = result.get(string[i].upper()) + 1

result = sorted(result.items(), key=lambda x: x[1], reverse= True)

if len(result) == 1 or result[0][1] != result[1][1]:
    print(result[0][0])
else :
    print("?")