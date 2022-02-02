import sys

string = sys.stdin.readline().rstrip()

result = ""

for i in range(ord('a'), ord('z')+1):
    try :
        index = str(string.index(chr(i)))
        result += index+" "
    except :
        result += "-1 "
    
print(result)