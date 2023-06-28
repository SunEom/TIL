// 25192 인사성 밝은 곰

let n = Int(readLine()!)!
var dict = [String:Bool]()
var count = 0
for _ in 0..<n {
    var order = readLine()!
    
    if order == "ENTER" {
        dict = [String:Bool]()
    } else {
        if dict[order] == nil {
            count += 1
            dict[order] = true
        }
    }
}
print(count)
