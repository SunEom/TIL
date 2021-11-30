def dp(num):
    if(num == 0):
        return 0;

    max_value = -100;

    for i in range(len(p)) :
        if i+1 <= num:
            max_value = max(p[i] + dp(num-(i+1)), max_value)
        else:
            break;
    return max_value
    
n = int(input())
p = list(map(int, input().split()))

print(dp(n))