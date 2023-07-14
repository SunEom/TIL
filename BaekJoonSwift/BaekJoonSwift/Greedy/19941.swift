// 19941 햄버거 분배

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr = Array(readLine()!)
var result = 0

for i in 0..<arr.count {
    let now = arr[i]
    let left =  i - input[1] < 0 ? 0 : i - input[1]
    let right =  i + input[1] >= arr.count ? arr.count - 1 : i + input[1]
    
    if now == "P" {
        for j in (left...right) {
            if arr[j] == "H" {
                result += 1
                arr[j] = "X"
                break
            }
        }
    }
    
}

print(result)
