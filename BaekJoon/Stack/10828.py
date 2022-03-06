import sys


N = int(sys.stdin.readline())
stack = []
top = 0
for _ in range(N):
    command = sys.stdin.readline().rstrip().split()
    if command[0] == "push":
        stack.append(int(command[1]))
        top += 1
    elif command[0] == "pop":
        if top == 0:
            print(-1)
        else:
            print(stack.pop())
            top -= 1
    elif command[0] == "size":
        print(top)
    elif command[0] == "empty":
        if top == 0:
            print(1)
        else :
            print(0)
    elif command[0] == "top":
        if top == 0 :
            print(-1)
        else:
            print(stack[-1])
