import Foundation

let n = Int(readLine()!)!
var nkArr = [[(Int)]]()
var max1 = -1
var max2 = -1
var resultArr = [[Int]]()

for _ in 0..<n {
    var temp = [Int]()
    var a = Int(readLine()!)!
    if a > max1 {
        max1 = a
    }
    temp.append(a)
    var b = Int(readLine()!)!
    if b > max2 {
        max2 = b
    }
    temp.append(b)
    nkArr.append(temp)
}

resultArr.append([Int]())
for i in 1...max2 {
    resultArr[0].append(i)
}

for i in 1...max1 {
    resultArr.append([Int]())
    resultArr[i].append(resultArr[i-1][0])
    for j in 1..<max2 {
        resultArr[i].append(resultArr[i][j-1]+resultArr[i-1][j])
    }
}

for tempList in nkArr {
    print(resultArr[tempList[0]][tempList[1]-1])
}
