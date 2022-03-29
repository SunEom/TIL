import Foundation

var result = Int.max

func calc_stat(team : [Int], stat: [[Int]]) -> Int {
    var result = 0
    
    for i in 0..<team.count-1 {
        for j in i+1..<team.count {
            result += stat[team[i]][team[j]]
            result += stat[team[j]][team[i]]
        }
    }
    return result
}

func calc_diff(team1: [Int], team2: [Int], stat: [[Int]]) -> Int {
    let a = calc_stat(team: team1, stat: stat)
    let b = calc_stat(team: team2, stat: stat)
    return a > b ? a-b : b-a
}

func bt(n: Int, team1: [Int], team2: [Int], remain:[Int] , stat: [[Int]]) {
    if remain.count == 0 {
        let diff = calc_diff(team1: team1, team2: team2, stat: stat)
        if result > diff {
            result = diff
        }
    }
    
    for i in 0..<remain.count {
        for j in i+1..<remain.count {
            var temp = remain
            let a = temp[i]
            let b = temp[j]
            
            temp.remove(at: i)
            temp.remove(at: j-1)
            
            bt(n: n, team1: team1+[a], team2: team2+[b], remain: temp, stat: stat)
            bt(n: n, team1: team1+[b], team2: team2+[a], remain: temp, stat: stat)
        }
    }
    
}

let n = Int(readLine()!)!
var stat = [[Int]]()
var remain = [Int]()

for i in 0..<n {
    stat.append(readLine()!.split(separator: " ").map { Int($0)! })
    remain.append(i)
}

bt(n: n, team1: [], team2: [], remain: remain, stat: stat)

print(result)
