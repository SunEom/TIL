import sys

count = int(sys.stdin.readline())

for _ in range(count):
    result = ""
    num, string = sys.stdin.readline().split()
    num = int(num)
    if (num == 0):
        continue
    for i in range(len(string)):
        result += (string[i]*num)
    print(result)