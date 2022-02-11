import sys


N, M = map(int, sys.stdin.readline().split())

li = []

def solve(li, N, M):
    if len(li) == M:
        print(*li)
        return

    for i in range(1, N+1):
        solve(li + [i], N, M)
            
solve(li, N, M)        