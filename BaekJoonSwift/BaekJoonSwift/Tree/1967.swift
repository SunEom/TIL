import Foundation

let N = Int(readLine()!)!
var result = 0
var edges = Array(repeating: [[Int]](), count: N+1)

while(N != 1) {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    edges[temp[0]].append([temp[1], temp[2]])
    if temp[1] == N { break }
}

func getLength(start: Int) -> Int {
    var subLength = [Int]()
    
    if edges[start].count == 0 {
        return 0
    }
    
    for e in edges[start] {
        subLength.append(getLength(start: e[0]) + e[1])
    }
    
    if subLength.count == 1 {
        if subLength[0] > result { result = subLength[0] }
        return subLength[0]
    }
    else {
        subLength.sort(by: >)
        if subLength[0] + subLength[1] > result { result  = subLength[0] + subLength[1]}
        return subLength[0]
    }
    
}

_ = getLength(start: 1)
print(result)
