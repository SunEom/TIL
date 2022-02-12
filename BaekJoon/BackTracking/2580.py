import sys

global solved
solved = False

matrix = []
zero_points = []


def available_numbers(matrix, i, j): # 직전 추가한 성분의 row, column의 인덱스
    numbers = [1,2,3,4,5,6,7,8,9]

    for c in range(9):
        if matrix[i][c] in numbers:
            numbers.remove(matrix[i][c])
        if matrix[c][j] in numbers:
            numbers.remove(matrix[c][j])

    r1 = i // 3 #정사각형의 row 인덱스
    c1 = j // 3 #정사각형의 column 인덱스

    for r in range(3*r1, 3*r1+3):
        for c in range(3*c1, 3*c1+3):
            if matrix[r][c] in numbers:
                numbers.remove(matrix[r][c])
    
    return numbers



def print_matrix(matrix):
    for l in matrix:
        print(*l)

for _ in range(9):
    matrix.append(list(map(int, sys.stdin.readline().split())))


def solve(matrix, idx):
    global solved

    if solved == True:
        return

    if len(zero_points) == 0:
        print_matrix(matrix)
        solved = True

    else:
        (r,c) =  zero_points[idx]
        numbers = available_numbers(matrix, r, c)
        for num in numbers:
            matrix[r][c] = num
            solve(matrix, idx+1)
            matrix[r][c] = 0


zero_points = [(r, c) for r in range(9) for c in range(9) if matrix[r][c] == 0]

solve(matrix, 0)