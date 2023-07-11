// 1446 지름길

func dp(now: Int, totalDist: Int, next: Int) {

    if totalDist + (input[1] - now) < result {
        result = totalDist + (input[1] - now)
    }
    
    for i in next..<shortPath.count {
        if shortPath[i].start >= now, shortPath[i].end <= input[1] {
            dp(now: shortPath[i].end, totalDist: totalDist + (shortPath[i].start - now) + (shortPath[i].length), next: i+1)
        }
    }
    
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var shortPath = [(start: Int, end: Int, length: Int)]()
var result = input[1]

for _ in 0..<input[0] {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    shortPath.append((temp[0], temp[1], temp[2]))
}
shortPath.sort { $0.start < $1.start }

for i in 0..<input[0] {
    dp(now: 0, totalDist: 0, next: i)
}

print(result)
