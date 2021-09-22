n = int(input())
li = []

result={"white":0, "blue":0};


def isWhiteOrBlue(li, rowStart, rowEnd, colStart, colEnd, result):
    if(isMatchAllColor(li, rowStart, rowEnd, colStart, colEnd)):
        if(li[rowStart][colStart] == 0):
            result["white"]+=1
        elif(li[rowStart][colStart] == 1):
            result["blue"]+=1

    else :
        isWhiteOrBlue(li, rowStart, (rowStart + rowEnd)//2, colStart, (colStart + colEnd)//2, result)
        isWhiteOrBlue(li, ((rowStart + rowEnd)//2)+1, rowEnd, colStart, (colStart + colEnd)//2, result)
        isWhiteOrBlue(li, rowStart, (rowStart + rowEnd)//2, ((colStart + colEnd)//2)+1, colEnd, result)
        isWhiteOrBlue(li, ((rowStart + rowEnd)//2)+1, rowEnd, ((colStart + colEnd)//2)+1, colEnd, result)
        
def isMatchAllColor(li, rowStart, rowEnd, colStart, colEnd):
    for r in range(rowStart, rowEnd+1):
        for c in range(colStart, colEnd+1):
            if(li[r][c] != li[rowStart][colStart]):
                return False
    
    return True


for i in range(n):
    li.append(list(map(int, input().split(" "))))


isWhiteOrBlue(li, 0, n-1, 0, n-1, result)


print(result["white"])
print(result["blue"])