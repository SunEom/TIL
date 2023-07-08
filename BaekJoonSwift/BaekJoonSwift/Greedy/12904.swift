// 12904 A와 B

var s = Array(readLine()!)
var t = Array(readLine()!)

var result = true

while true {
    if s.count == t.count {
        for i in 0..<s.count {
            if s[i] != t[i] {
                result = false
            }
        }
        break
    }
    
    if t.last! == "A" {
        t.removeLast()
    } else {
        t.removeLast()
        t.reverse()
    }
}
print(result ? 1 : 0)
