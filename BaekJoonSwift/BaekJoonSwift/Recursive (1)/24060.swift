import Foundation

var arr: [Int] = []
var k = 0
var result = 0

func mergeSort(left: Int, right: Int) {
    if left < right {
        let m = (left + right) / 2
        mergeSort(left: left, right: m)
        mergeSort(left: m+1, right: right)
        merge(left: left, center: m, right: right)
    }
}

func merge(left: Int, center: Int, right: Int) {
    var i = left
    var j = center + 1
    var t = 0
    var tmp = arr
    
    while i <= center && j <= right {
        if arr[i] <= arr[j] {
            tmp[t] = arr[i]
            t += 1
            i += 1
        }
        else {
            tmp[t] = arr[j]
            t += 1
            j += 1
        }
    }
    
    while i <= center {
        tmp[t] = arr[i]
        t += 1
        i += 1
    }
    
    while j <= right {
        tmp[t] = arr[j]
        t += 1
        j += 1
    }
    
    i = left
    t = 0
    
    while i <= right {
        k += 1
        if k == input[1] {
            result = tmp[t]
        }
        
        arr[i] = tmp[t]
        i += 1
        t += 1
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
arr = readLine()!.split(separator: " ").map { Int(String($0))! }

mergeSort(left: 0, right: arr.count-1)
print(k >= input[1] ? result : -1)
