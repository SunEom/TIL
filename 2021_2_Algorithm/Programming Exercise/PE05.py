import sys;
sys.setrecursionlimit(10000);


def initVisited():
    for i in range(h):
        temp = [];
        for j in range(w):
            temp.append(False);
        visited.append(temp);


def countIsland(h, w):
    count = 0;
    for i in range(h):
        for j in range(w):
            if(testMap[i][j] == 1 and visited[i][j] == False):
                visitIsland(i, j);
                count+=1;
    
    return count;



def visitIsland(r, c):
    visited[r][c] = True;

    #현재 지점의 위 확인
    if r-1 >= 0 and visited[r-1][c] == False and testMap[r-1][c] == 1: 
        visitIsland(r-1,c);

    #현재 지점의 오른쪽 위 확인
    if r-1 >= 0 and c+1 < len(testMap[0]) and visited[r-1][c+1] == False and testMap[r-1][c+1] == 1: 
        visitIsland(r-1,c+1);

    #현재 지점의 오른쪽 확인
    if c+1 < len(testMap[0]) and visited[r][c+1] == False and testMap[r][c+1] == 1: 
        visitIsland(r,c+1);

    #현재 지점의 오른쪽 아래 확인
    if r+1 < len(testMap) and c+1 < len(testMap[0]) and visited[r+1][c+1] == False and testMap[r+1][c+1] == 1: 
        visitIsland(r+1,c+1);

    #현재 지점의 아래 확인
    if r+1 <len(testMap) and visited[r+1][c] == False and testMap[r+1][c] == 1: 
        visitIsland(r+1,c);

    #현재 지점의 왼쪽 아래 확인
    if r+1 < len(testMap) and c-1 >= 0 and visited[r+1][c-1] == False and testMap[r+1][c-1] == 1: 
        visitIsland(r+1,c-1);

    #현재 지점의 왼쪽 확인
    if c-1 >= 0 and visited[r][c-1] == False and testMap[r][c-1] == 1: 
        visitIsland(r,c-1);

    #현재 지점의 왼쪽 위 확인
    if r-1 >= 0 and c-1 >= 0 and visited[r-1][c-1] == False and testMap[r-1][c-1] == 1: 
        visitIsland(r-1,c-1);


while(True):
    testMap = []
    visited = []
    numOfIsland = 0;

    w, h = map(int, input().split());

    if w == 0 and h == 0:
        break;

    for i in range(h):
        testMap.append(list(map(int, input().split())))

    initVisited()
    result = countIsland(h, w);
    print(result);

