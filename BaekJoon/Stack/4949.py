import sys


while True :
    stack = []
    isVPS = True
    string = sys.stdin.readline().rstrip()
    if string == ".":
        break

    sentence = list(string)
    for c in sentence:
        if c == "(" or c == "[":
            stack.append(c)
        elif c == ")":
            if len(stack) == 0 or stack[-1] != "(":
                isVPS = False
                break
            else:
                stack.pop()
        elif c == "]":
            if len(stack) == 0 or stack[-1] != "[":
                isVPS = False
                break
            else:
                stack.pop()
    
    if len(stack) != 0:
        isVPS = False
    
    if isVPS:
        print("yes")
    else:
        print("no")