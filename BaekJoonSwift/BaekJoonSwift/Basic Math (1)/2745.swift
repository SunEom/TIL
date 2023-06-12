// 2745 진법 변환

let dict = ["0":0,"1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9,"A":10,"B":11,"C":12,"D":13,"E":14,"F":15,"G":16,"H":17,"I":18,"J":19,"K":20,"L":21,"M":22,"N":23,"O":24,"P":25,"Q":26,"R":27,"S":28,"T":29,"U":30,"V":31,"W":32,"X":33,"Y":34,"Z":35]


let arr = readLine()!.split(separator: " ").map { String($0) }
let N = Array(arr[0]).map { String($0) }
let B = Int(arr[1])!

var result = 0

var i = 1
for c in N.reversed() {
    result += i*dict[c]!
    i*=B
}

print(result)


