def dp(num):
    while(len(dp_list) <= num+1):
        dp_list.append(dp_list[-1]+dp_list[-2]+dp_list[-3])


n  = int(input())
num_list = [];
dp_list=[0,1,2,4]
for i in range(n):
    num_list.append(int(input()))

dp(max(num_list))

for i in num_list:
    print(dp_list[i])
