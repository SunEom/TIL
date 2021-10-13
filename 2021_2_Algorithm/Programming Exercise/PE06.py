n = int(input())
adjMat = []
visited = [False] * n
result = []


def dfs(u):
    for i in range(n):
        if visited[i] == False and adjMat[u][i] == 1:
            visited[i] = True
            dfs(i)


for i in range(n):
    adjMat.append(list(map(int, input().split())))
    result.append([0]*n)




for r in range(n):
    visited = [False]*n
    dfs(r)
    for i in range(n):
        if visited[i] == True:
            result[r][i] = 1

for r in range(n):
    for c in range(n):
        print(result[r][c], end='')
        print(' ', end='')
    print()
