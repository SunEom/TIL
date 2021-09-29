def girdTrevesal(r, c, rs, re, cs, ce):
    if rs + 1 == re :
        if r == rs and c == cs:
            return 1
        elif r == rs and c == cs+1:
            return 2
        elif r == rs+1 and c == cs:
            return 3
        elif r == rs+1 and c == cs +1:
            return 4

    rmid = (re+rs)//2
    cmid = (ce+cs)//2

    if r <= rmid and c <= cmid:
        return  girdTrevesal(r, c, rs, rmid, cs, cmid)
    elif r <= rmid and c > cmid:
        return ((re-rs+1)//2)**2 + girdTrevesal(r, c, rs, rmid, cmid+1, ce)
    elif r > rmid and c <= cmid:
        return (((re-rs+1)//2)**2)*2 + girdTrevesal(r, c, rmid+1, re, cs, cmid)
    else :
        return (((re-rs+1)//2)**2)*3 + girdTrevesal(r, c, rmid+1, re, cmid+1, ce)
    

n, r, c = map(int, input().split())

cnt = -1

result =  cnt + girdTrevesal(r, c, 0, 2**n-1, 0, 2**n-1)

print(result)
