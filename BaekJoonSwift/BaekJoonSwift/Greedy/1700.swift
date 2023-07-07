// 1700 멀티탭 스케줄링

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var multitab = [Int]()

let list = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 0

var i = 0
while multitab.count < input[0] && i < list.count{
    if !multitab.contains(list[i]) {
        multitab.append(list[i])
    }
    i += 1
}

for j in stride(from: i, to: list.count, by: 1) {
    if multitab.contains(list[j]) {
        continue
    } else {
        let dist = multitab.map { list[j...].firstIndex(of: $0) }
        var idx = -1
        var maxDist = -1
        for i in 0..<dist.count {
            if dist[i] == nil {
                idx = i
                break
            } else {
                if dist[i]! > maxDist {
                    maxDist = dist[i]!
                    idx = i
                }
            }
        }
        multitab[idx] = list[j]
        result += 1
    }
}


print(result)

