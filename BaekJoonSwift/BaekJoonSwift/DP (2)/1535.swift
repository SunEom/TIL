// 1535 안녕

func dp(remainLife: Int, totalJoy: Int, nextIdx: Int) {
    result = result < totalJoy ? totalJoy : result
    for i in nextIdx..<life.count {
        if remainLife - life[i] > 0 {
            dp(remainLife: remainLife-life[i], totalJoy: totalJoy + joy[i], nextIdx: i+1)
        }
    }
}

let N = Int(readLine()!)!
let life = readLine()!.split(separator: " ").map { Int(String($0))! }
let joy = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = Int.min

for i in 0..<life.count {
    dp(remainLife: 100, totalJoy: 0, nextIdx: i)
}

print(result)


