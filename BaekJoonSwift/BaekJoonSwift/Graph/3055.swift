// 3055 탈출

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0]
let C = input[1]
var arr = [[String]]()
var dpos = (0,0)
var waterPos = [(Int,Int)]()
var start = (0,0)
var result = Int.max

for r in 0..<R {
    let temp = Array(readLine()!).map { String($0) }
    for c in 0..<temp.count {
        if temp[c] == "S" {
            start = (r,c)
        } else if temp[c] == "D" {
            dpos = (r,c)
        } else if temp[c] == "*" {
            waterPos.append((r,c))
        }
    }
    arr.append(temp)
}

func solve() {
    
    var queue = [(start.0, start.1, 0)]
    var count = -1
    let direction = [(1,0),(0,1),(-1,0),(0,-1)]
    
    while !queue.isEmpty {
        let pos = queue.removeFirst()
        
        if (pos.0, pos.1) == dpos {
            result = pos.2
            return
        }
        
        if count != pos.2 {
            var newWaters = [(Int, Int)]()
            for w in waterPos {
                for d in direction {
                    let r = w.0 + d.0
                    let c = w.1 + d.1
                    
                    if (0..<R).contains(r) && (0..<C).contains(c) && (arr[r][c] == "." || arr[r][c] == "v" ) {
                        newWaters.append((r,c))
                        arr[r][c] = "*"
                    }
                }
            }
            waterPos = newWaters
            count += 1
        }
        
        for d in direction {
            let r = pos.0 + d.0
            let c = pos.1 + d.1
            
            if (0..<R).contains(r) && (0..<C).contains(c) && (arr[r][c] == "." || arr[r][c] == "D") {
                queue.append((r,c,pos.2+1))
                arr[r][c] = "v"
            }
        }
    }
    
}

solve()

print(result == Int.max ? "KAKTUS" : result)
