// 2212 센서

let N = Int(readLine()!)!
let K = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var idx = Array(0..<K)

if N <= K {
    print ( 0)
} else {
    var dist = [Int]()
    for i in 0..<N-1 {
        dist.append(arr[i+1]-arr[i])
    }

    dist.sort()

    print(dist[0..<dist.count-K+1].reduce(0, +))

}

