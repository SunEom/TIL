num = int(input())
result = [{"zero":1 , "one":0},{"zero":0 , "one":1}]


def fibonacci(n, result):
    if n ==0 or n==1:
        return
    while True:
        a = result[len(result)-1]
        b = result[len(result)-2]
        result.append({"zero":a["zero"]+b["zero"], "one":a["one"]+b["one"]})
        if(len(result) > n):
            break

for i in range(num):
    n = int(input())
    fibonacci(n, result)
    print(str(result[n]["zero"])+" "+str(result[n]["one"]))

    