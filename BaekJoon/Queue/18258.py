import sys


N = int(sys.stdin.readline())

queue = []
front = 0
rear = 0

for _ in range(N):
    command = sys.stdin.readline().rstrip().split()
    if command[0] == "push":
        queue.append(int(command[1]))
        rear += 1
    elif command[0] == "pop":
        if front == rear:
            print(-1)
        else:
            print(queue[front])
            front += 1
    elif command[0] == "size":
        print(rear - front)
    elif command[0] == "empty":
        if front == rear:
            print(1)
        else:
            print(0)
    elif command[0] == "front":
        if front == rear:
            print(-1)
        else:
            print(queue[front])
    elif command[0] == "back":
        if front == rear:
            print(-1)
        else:
            print(queue[rear-1])
