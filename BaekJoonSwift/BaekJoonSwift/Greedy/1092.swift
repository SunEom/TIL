// 1092 배

let N = Int(readLine()!)!
let crain = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
let M = Int(readLine()!)!
let box = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
var moved = Array(repeating: -1, count: box.count)

if box[0] > crain[0] {
    print(-1)
} else {
    var cnt = 0
    var time = 0
    while cnt != box.count {
        var i = 0
        
        time += 1
        for c in crain {
            while i < moved.count {
                if moved[i] == -1 && box[i] <= c {
                    moved[i] = time
                    cnt += 1
                    break
                }
                i += 1
            }
        }
        
    }

    print(moved.max()!)
}


