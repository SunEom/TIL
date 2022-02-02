import sys

length = int(sys.stdin.readline().rstrip())
str = sys.stdin.readline().rstrip()

result = 0
for _ in range(length):
    num = str[-1]
    result += ord(num) - ord('0')
    str = str[:-1]

print(result)