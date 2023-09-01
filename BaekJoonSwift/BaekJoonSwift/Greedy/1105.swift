// 1105 팔

let arr = readLine()!.split(separator: " ").map { Array($0).map { String($0) } }
var i = 0
var result = 0

if arr[0].count != arr[1].count {
    print(0)
} else {
    for i in 0..<arr[0].count{
        if arr[0][i] == arr[1][i]{
            if arr[0][i]=="8"{
                result += 1
            }
        }else{
            break
        }
    }
    print(result)
}

