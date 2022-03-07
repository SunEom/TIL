from collections import deque
import sys

N = int(sys.stdin.readline())

li = [x for x in range(1,N+1)]
queue = deque(li)

while len(queue) != 1:
    queue.popleft()
    if len(queue) == 1:
        break
    queue.append(queue.popleft())
    
print(queue.pop())
