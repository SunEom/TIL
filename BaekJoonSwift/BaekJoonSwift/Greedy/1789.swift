// 1789    수들의 합

var n = Int64(readLine()!)!
var cnt = 0

var i = Int64(1)
while n != 0 {
    if n > i*2 || n-i == 0 {
        cnt += 1
        n -= i
    }
    i += 1
}

print(cnt)
