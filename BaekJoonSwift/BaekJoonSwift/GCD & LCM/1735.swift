// 1735  분수 합

let a = readLine()!.split(separator: " ").map { Int(String($0))! }
let b = readLine()!.split(separator: " ").map { Int(String($0))! }

let gcd = getGCD(a[1], b[1])
let bottom = a[1]/gcd*b[1]
let top = bottom/a[1]*a[0] + bottom/b[1]*b[0]

let tgcd = getGCD(bottom, top)
print(top/tgcd, bottom/tgcd)



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
