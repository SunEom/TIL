import sys

string = sys.stdin.readline().rstrip()

croAl = ["c=","c-","dz=","d-","lj","nj","s=","z="]

result = 0

while(len(string) != 0):
    if (string[:2] in croAl):
        result+=1
        string = string[2:]
    elif (string[:3] in croAl):
        result +=1
        string = string[3:]
    else:
        result +=1
        string = string[1:]

print(result)

