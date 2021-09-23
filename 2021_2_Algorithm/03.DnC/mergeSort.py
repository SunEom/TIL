a = [16, 12, 5, 38, 19, 4, 20 ,27]

def merge(li, ls, le, rs, re):
    lptr = ls
    rptr = rs
    bptr = ls

    result = li.copy()

    while(lptr <= le and rptr <= re):
        if(li[lptr]<li[rptr]):
            result[bptr] = li[lptr]
            bptr+=1
            lptr+=1
        else :
            result[bptr] = li[rptr]
            bptr+=1
            rptr+=1


    while(lptr <= le):
        result[bptr] = li[lptr]
        bptr+=1
        lptr+=1
    
    while(rptr <= re):
        result[bptr] = li[rptr]
        bptr+=1
        rptr+=1

    for i in range(ls, re+1):
        li[i] = result[i]


def msort(li, s, e):

    if(s == e):
        return
    else:
        m = (s+e)//2
        msort(li, s, m)
        msort(li, m+1, e)
        merge(li, s, m, m+1, e)

msort(a, 0, len(a)-1)


print(a)