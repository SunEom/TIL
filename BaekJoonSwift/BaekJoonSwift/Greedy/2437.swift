// 2437 저울

let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var sum = 0

sum = arr[0]

if sum > 1 {
    print(1)
} else {
    for i in stride(from: 1, to: arr.count, by: 1) {
        if arr[i] <= sum + 1 {
            sum += arr[i]
        } else {
            break
        }
    }
    print(sum+1)
}
