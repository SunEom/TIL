//1969 DNA

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var arr = [[String]]()
var result = ""
var hDist = 0

for _ in 0..<input[0] {
    let str = readLine()!
    
    arr.append(Array(str).map { String($0) })
}

for c in 0..<input[1] {
    var dict = ["A":0 , "T" : 0, "C" : 0 , "G":0]
    
    for r in 0..<input[0] {
        switch arr[r][c] {
            case "A":
                dict["A"]! += 1
            case "T":
                dict["T"]! += 1
            case "G":
                dict["G"]! += 1
            case "C":
                dict["C"]! += 1
            default:
                break
        }
    }
    
    for t in ["A", "C", "G", "T"] {
        if dict[t]! == dict.values.max()! {
            result += t
            break
        }
    }
    
    hDist += dict.values.reduce(0, +) - dict.values.max()!
    
}

print(result)
print(hDist)
