// 20044 Project Teams

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var arrIdx = 0
var i = 0

var team = Array(repeating: 0, count: n)
for _ in 0..<arr.count/(2*n) {
    
    
    i = 0
    
    while i < n {
        team[i] += arr[arrIdx]
        i += 1
        arrIdx += 1
    }
    
    i = n-1
    
    while i >= 0 {
        team[i] += arr[arrIdx]
        i -= 1
        arrIdx += 1
    }
    
}

print(team.min()!)
