// 1103 게임

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]
let m = nm[1]
var arr = [[String]]()

for _ in 0..<n {
    arr.append(Array(readLine()!).map { String($0) })
}

var result = 0

func dfs() {
    var stack = [((r: Int, c: Int), cnt: Int, visited:[[Int]: Bool])]()
    stack.append(((0,0),0,[[0,0]:true]))
    
    while !stack.isEmpty {
        let pop = stack.removeLast()
        let nowR = pop.0.r
        let nowC = pop.0.c
        let nowValue = Int(arr[nowR][nowC])!
        let nowCnt = pop.cnt
        
        let directions = [(0, nowValue),(0, -nowValue),(nowValue,0),(-nowValue,0)]
        
        for direction in directions {
            let tempR = nowR+direction.0
            let tempC = nowC+direction.1
            
            if (0..<n).contains(tempR) && (0..<m).contains(tempC) {
                if arr[tempR][tempC] != "H" {
                    if pop.visited[[tempR,tempC]] == true {
                        result = -1
                        return
                    } else {
                        var nowVisited = pop.visited
                        nowVisited[[tempR, tempC]] = true
                        stack.append(((tempR, tempC), nowCnt+1, visited: nowVisited))
                    }
                    
                } else {
                    result = max(result, nowCnt+1)
                }
            } else {
                result = max(result, nowCnt+1)
            }
        }
        
    }
}

dfs()
print(result)
