import sys


n = int(sys.stdin.readline())

li = [x for x in range(1,n+1)]
arr = []
stack = []
result = []
isAvailable = True

for _ in range(n):
    arr.append(int(sys.stdin.readline()))

while len(arr) != 0:
    if len(li) != 0 and li[0] < arr[0]:
        stack.append(li[0])
        li = li[1:]
        result.append("+")
    elif len(li) != 0 and li[0] == arr[0]:
        li = li[1:]
        arr = arr[1:]
        result.append("+")
        result.append("-")
    else:
        if len(stack) == 0 or stack[-1] != arr[0]:
            isAvailable = False
            break
        else:
            stack.pop()
            arr = arr[1:]
            result.append("-")

if isAvailable:
    for r in result:
        print(r)
else:
    print("NO")
