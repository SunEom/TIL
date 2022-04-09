import Foundation

var mem = [String: Int]()
func dp(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0{
        return 1
    }
    
    if a > 20 || b > 20 || c > 20 {
        if mem["\(a),\(b),\(c)"] == nil {
            mem["20,20,20"] = dp(20, 20, 20)
            return mem["20,20,20"]!
        } else {
            return mem["20,20,20"]!
        }
        
    }
    
    if a < b && b < c {
        var temp1 = 0
        var temp2 = 0
        var temp3 = 0
        if mem["\(a),\(b),\(c-1)"] == nil {
            temp1 = dp(a, b, c-1)
            mem["\(a),\(b),\(c-1)"] = temp1
        } else {
            temp1 = mem["\(a),\(b),\(c-1)"]!
        }
        
        if mem["\(a),\(b-1),\(c-1)"] == nil {
            temp2 = dp(a, b-1, c-1)
            mem["\(a),\(b-1),\(c-1)"] = temp2
        } else {
            temp2 = mem["\(a),\(b-1),\(c-1)"]!
        }

        if mem["\(a),\(b-1),\(c)"] == nil {
            temp3 = dp(a, b-1, c)
            mem["\(a),\(b-1),\(c)"] = temp3
        } else {
            temp3 = mem["\(a),\(b-1),\(c)"]!
        }
        
        return temp1 + temp2 - temp3
    }
    
    var temp1 = 0
    var temp2 = 0
    var temp3 = 0
    var temp4 = 0
    
    if mem["\(a-1),\(b),\(c)"] == nil {
        temp1 = dp(a-1, b, c)
        mem["\(a-1),\(b),\(c)"] = temp1
    } else {
        temp1 = mem["\(a-1),\(b),\(c)"]!
    }
    
    if mem["\(a-1),\(b-1),\(c)"] == nil {
        temp2 = dp(a-1, b-1, c)
        mem["\(a-1),\(b-1),\(c)"] = temp2
    } else {
        temp2 = mem["\(a-1),\(b-1),\(c)"]!
    }

    if mem["\(a-1),\(b),\(c-1)"] == nil {
        temp3 = dp(a-1, b, c-1)
        mem["\(a-1),\(b),\(c-1)"] = temp3
    } else {
        temp3 = mem["\(a-1),\(b),\(c-1)"]!
    }
    
    if mem["\(a-1),\(b-1),\(c-1)"] == nil {
        temp4 = dp(a-1, b-1, c-1)
        mem["\(a-1),\(b-1),\(c-1)"] = temp4
    } else {
        temp4 = mem["\(a-1),\(b-1),\(c-1)"]!
    }
    
    return temp1 + temp2 + temp3 - temp4
}

var string = ""

while true {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    if arr[0] == -1 && arr[1] == -1 && arr[2] == -1 {
        break
    }
    string += "w(\(arr[0]), \(arr[1]), \(arr[2])) = \(dp(arr[0], arr[1], arr[2]))\n"
}

print(string)
