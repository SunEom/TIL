// 2810 컵 홀더

let n = Int(readLine()!)!
var arr = Array(readLine()!).map { String($0) }
var result = 0
var list = ["*"]

var i = 0
while i < arr.count {
    if arr[i] == "S" {
        list.append("S")
        list.append("*")
        i += 1
    } else if arr[i] == "L" {
        list.append("L")
        list.append("L")
        list.append("*")
        i += 2
    }
}

var visited = Array(repeating: false, count: list.count)

for i in 1..<list.count-1 {
    
    if visited[i-1] == false && list[i-1] == "*" {
        visited[i-1] = true
        result += 1
        continue
    }
    
    if visited[i+1] == false && list[i+1] == "*" {
        visited[i+1] = true
        result += 1
        continue
    }
    
    
    
}

print(result)
