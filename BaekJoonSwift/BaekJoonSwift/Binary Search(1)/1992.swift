import Foundation

func dq(_ t: [[Character]], _ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) -> String {
    if rs == re {
        return "\(t[rs][cs])"
    }
    else {
        
        if isAllSame(t, rs, re, cs, ce) {
            return "\(t[rs][cs])"
        }
        else {
            var temp = "("
            let rm = (re+rs)/2
            let cm = (ce+cs)/2
            temp += dq(t, rs, rm, cs, cm)
            temp += dq(t, rs, rm, cm+1, ce)
            temp += dq(t, rm+1, re, cs, cm)
            temp += dq(t, rm+1, re, cm+1, ce)
            temp += ")"
            return temp
        }
        
    }
}

func isAllSame(_ tree: [[Character]], _ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) -> Bool {
    for r in rs...re {
        for c in cs...ce {
            if tree[r][c] != tree[rs][cs] {
                return false
            }
        }
    }
    return true
}

var t = [[Character]]()
let n = Int(readLine()!)!

for _ in 0..<n {
    t.append(Array(readLine()!))
}
print(dq(t, 0, n-1, 0, n-1))
