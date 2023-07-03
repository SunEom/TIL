// 10162 전자레인지

var t = Int(readLine()!)!

var buttons = [300, 60, 10]

if t%10 != 0 {
    print(-1)
} else {
    let a = t/300
    t %= 300
    let b = t/60
    t %= 60
    let c = t/10
    
    print(a,b,c)
}
