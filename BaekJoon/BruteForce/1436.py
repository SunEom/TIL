N = int(input())

series = []

temp = 666
while len(series) < N:
    if "666" in str(temp):
        series.append(temp)
    temp += 1

print(series[-1])