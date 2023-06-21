// 14215 세 막대

let list = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

if list[0] + list[1] > list[2] {
    print(list[0]+list[1]+list[2])
} else {
    print((list[0]+list[1])*2-1)
}
