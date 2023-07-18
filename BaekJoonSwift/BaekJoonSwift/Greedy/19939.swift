// 19939 박터뜨리기

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0]
let k = input[1]

if n < k*(k+1)/2 {
    print(-1)
} else {
    print((k-1) + ((n - k*(k+1)/2)%k != 0 ? 1 : 0 ))
}
