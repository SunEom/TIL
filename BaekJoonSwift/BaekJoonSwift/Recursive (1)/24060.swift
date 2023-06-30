// 24060 알고리즘 수업 - 병합 정렬 1

//merge_sort(A[p..r]) { # A[p..r]을 오름차순 정렬한다.
//    if (p < r) then {
//        q <- ⌊(p + r) / 2⌋;       # q는 p, r의 중간 지점
//        merge_sort(A, p, q);      # 전반부 정렬
//        merge_sort(A, q + 1, r);  # 후반부 정렬
//        merge(A, p, q, r);        # 병합
//    }
//}
//
//# A[p..q]와 A[q+1..r]을 병합하여 A[p..r]을 오름차순 정렬된 상태로 만든다.
//# A[p..q]와 A[q+1..r]은 이미 오름차순으로 정렬되어 있다.
//merge(A[], p, q, r) {
//    i <- p; j <- q + 1; t <- 1;
//    while (i ≤ q and j ≤ r) {
//        if (A[i] ≤ A[j])
//        then tmp[t++] <- A[i++]; # tmp[t] <- A[i]; t++; i++;
//        else tmp[t++] <- A[j++]; # tmp[t] <- A[j]; t++; j++;
//    }
//    while (i ≤ q)  # 왼쪽 배열 부분이 남은 경우
//        tmp[t++] <- A[i++];
//    while (j ≤ r)  # 오른쪽 배열 부분이 남은 경우
//        tmp[t++] <- A[j++];
//    i <- p; t <- 1;
//    while (i ≤ r)  # 결과를 A[p..r]에 저장
//        A[i++] <- tmp[t++];
//}


var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var count = 0
var answer = -1

func mergeSort(_ s: Int, _ e: Int) {
    if s < e {
        let m = (s+e)/2
        mergeSort(s, m)
        mergeSort(m+1, e)
        merge(s, m, e)
    }
}

func merge(_ s: Int, _ m: Int, _ e: Int) {
    var i = s, j = m+1
    var temp = [Int]()
    
    while i <= m && j <= e {
        if arr[i] <= arr[j] {
            temp.append(arr[i])
            i += 1
        } else {
            temp.append(arr[j])
            j += 1
        }
    }
    
    while i <= m {
        temp.append(arr[i])
        i += 1
    }
    while j <= e {
        temp.append(arr[j])
        j += 1
    }
    
    for t in 0..<temp.count {
        arr[s+t] = temp[t]
        count += 1
        if count == input[1] {
            answer = temp[t]
        }
    }
}

mergeSort(0, arr.count-1)

print(answer)
