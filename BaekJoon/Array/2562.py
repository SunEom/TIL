arr = []

for _ in range(9):
    arr.append(int(input()))

maxNum = max(arr)

print(maxNum)
print(arr.index(maxNum)+1)