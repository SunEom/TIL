// 1344 축구

import Foundation

var p = Double(readLine()!)!/100.0
var q = Double(readLine()!)!/100.0

var factorial = Array(repeating: 1, count: 19)
var dp1 = [Double]()
var dp2 = [Double]()
var composite = [0, 1, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18]

func combine(n: Int, m:Int) -> Double {
    return Double(factorial[n]/factorial[m]/factorial[n-m])
}


for i in 2...18 {
    factorial[i] = factorial[i-1] * i
}


for i in 0...18 {
    dp1.append(combine(n: 18, m: i)*powl(p, Double(i))*powl(1-p,Double(18-i)))
    dp2.append(combine(n: 18, m: i)*powl(q, Double(i))*powl(1-q,Double(18-i)))
}

var result = 0.0

for i in composite {
    for j in composite {
        result += dp1[i]*dp2[j]
    }
}


print(1-result)
