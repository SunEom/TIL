// 1439 뒤집기

let arr = Array(readLine()!)

var change = 0
var result = 0

var prev = arr[0]
for i in 1..<arr.count {
    if arr[i] != prev {
        change += 1
        prev = arr[i]
    }
}


if change%2 == 0 {
    print(change/2)
} else {
    print((change+1)/2)
}
