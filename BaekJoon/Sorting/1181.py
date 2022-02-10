import sys


N = int(sys.stdin.readline())

li = []

for _ in range(N):
    s = sys.stdin.readline().rstrip()
    if s not in li:
        li.append(s)

for item in sorted(li, key = lambda w: (len(w), w)):
    print(item)
