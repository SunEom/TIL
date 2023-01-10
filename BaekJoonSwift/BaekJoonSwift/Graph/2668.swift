// 2668 숫자고르기

import Foundation

var result = Set<Int>()
let N = Int(readLine()!)!
var arr = [Array(0...N), [0]]
var visited = Array(repeating: false, count: N+1)

for _ in 0..<N {
    arr[1].append(Int(readLine()!)!)
}

func dfs(_ index: Int,_ a: Set<Int>, _ b: Set<Int>){
    var a = a
    var b = b
    
    a.insert(index)
    b.insert(arr[1][index])
    
    if a.contains(arr[1][index]) {
        if (a == b) {
            for e in a {
                result.insert(e)
            }
        }
        return
    }
        
    return dfs(arr[1][index], a, b)

}

for i in 1...N {
    if !result.contains(i) {
        dfs(i, Set(), Set())
    }
}

print(result.count)
var str = ""
for n in Array(result).sorted() {
    str += "\(n)\n"
}
print(str)
    
