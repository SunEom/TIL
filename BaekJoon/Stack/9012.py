import sys


n = int(sys.stdin.readline())

for _ in range(n):
    stack = []
    brackets = list(sys.stdin.readline().rstrip())
    isVPS = True
    for b in brackets:
        if b == "(":
            stack.append(b)
        else:
            if len(stack) == 0 :
                isVPS = False
                break
            else:
                stack.pop()
    if len(stack) != 0:
        isVPS = False
    if isVPS :
        print("YES")
    else:
        print("NO")