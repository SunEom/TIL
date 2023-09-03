// 12869 뮤탈리스크

let n = Int(readLine()!)!

let attack = [(1, 3, 9),(1, 9, 3), (3, 1, 9), (3, 9, 1), (9, 1, 3), (9, 3, 1)]
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
while arr.count < 3 {
    arr.append(0)
}

var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 61), count: 61), count: 61)

var queue = [((Int, Int, Int), Int)]()

queue.append(((arr[0], arr[1], arr[2]),0))


while !queue.isEmpty {
    let temp = queue.removeFirst()
    if temp.0.0 == 0 && temp.0.1 == 0 && temp.0.2 == 0 {
        print(temp.1)
        break
    }
    
    for i in 0..<6 {
        var a = temp.0.0 - attack[i].0
        var b = temp.0.1 - attack[i].1
        var c = temp.0.2 - attack[i].2
    
        if a>=0 && b>=0 && c>=0 {
            if visited[a][b][c] == false {
                queue.append(((a,b,c),temp.1+1))
                visited[a][b][c] = true
            }
        } else {
            if a < 0 {
                a = 0
            }
            
            if b < 0 {
                b = 0
            }
            
            if c < 0 {
                c = 0
            }
            
            if visited[a][b][c] == false {
                queue.append(((a,b,c),temp.1+1))
                visited[a][b][c] = true
            }
        }
    }
}
