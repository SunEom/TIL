n = int(input())

if n != 1:
    p = 2

    while n != 1:
        if n%p == 0:
            print(p)
            n //= p
        else:
            p+=1

