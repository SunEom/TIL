// 2486 가로수

let n = Int(readLine()!)!
var list = [Int]()
var diff = [Int]()
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}

for i in 1..<n {
    diff.append(list[i] - list[i-1])
}

var temp = diff[0]
var gcd = 1
for i in 1..<n-1 {
    gcd = getGCD(temp, diff[i])
    temp = gcd
}

print((list.last! - list.first!) / gcd - list.count + 1)

func getGCD(_ a: Int, _ b: Int) -> Int{
    var ta = a
    var tb = b
    
    var gcd = 1
    
    while true {
        if ta == 1 || tb == 1 || (ta > tb ? ta % tb == 0 : tb % ta == 0) {
            gcd = ta>tb ? tb : ta
            break
        }
        
        if ta > tb {
            ta %= tb
        } else {
            tb %= ta
        }
    }
    
    return gcd
}
