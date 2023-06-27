// 7785 회사에 있는 사람

let n = Int(readLine()!)!

var dict = [String : Bool]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input[1] {
        case "enter":
            dict[input[0]] = true
        case "leave":
            dict[input[0]] = false
        default:
            break
    }
}

print(dict.keys.filter { key in
    dict[key] == true
}.sorted(by: >).joined(separator: "\n"))


