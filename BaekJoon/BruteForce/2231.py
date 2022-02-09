def div_sum(n):
    result = n
    while n > 0 :
        result += n%10
        n //= 10
    return result

N = int(input())

for i in range(N):
    if div_sum(i) == N:
        print(i)
        break
    if i == N-1:
        print(0)