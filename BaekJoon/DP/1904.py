fibo = [0, 1, 2]

n = int(input())

while len(fibo) != 1000001:
    fibo.append((fibo[-1] +fibo[-2])%15746)

print(fibo[n])