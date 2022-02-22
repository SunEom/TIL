import sys


line = sys.stdin.readline().rstrip()
line = list(line.split("-"))
line = [list(map(int, list(x.split("+")))) for x in line ]

result = sum(line[0])

for i in range(1,len(line)):
    result-= sum(line[i])

print(result)