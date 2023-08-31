// 22864 피로도

let abcm = readLine()!.split(separator: " ").map { Int(String($0))! }

let a = abcm[0], b = abcm[1], c = abcm[2], m = abcm[3]

var fatigue = 0, result = 0

for _ in 0..<24 {
    if fatigue + a <= m {
        fatigue += a
        result += b
    } else {
        fatigue -= c
        if fatigue < 0 {
            fatigue = 0
        }
    }
}

print(result)

