import sys

count = int(input())

for _ in range(count):
    s = sys.stdin.readline()
    result = 0
    score = 1
    for c in s:
        if c == "O":
            result+= score
            score+=1
        elif c == "X":
            score = 1

    print(result)