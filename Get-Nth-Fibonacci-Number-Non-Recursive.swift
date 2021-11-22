// MARK: - GET N-TH FIBONACCI NUMBER

/*
 
 fibos = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ....
 */

func getNthFib(n: Int) -> Int {
    
    var fibosArray: [Int] = [0, 1]
    
    guard n > 2 else {
        return fibosArray[n - 1]
    }
    
    var left: Int = 0
    var right: Int = 1
    
    while fibosArray.count < n {
        // Appending next number
        fibosArray.append(fibosArray[left] + fibosArray[right])
        left += 1
        right += 1
    }
    
    return fibosArray.last!
}

getNthFib(n: 1) // 0
getNthFib(n: 2) // 1
getNthFib(n: 3) // 1
getNthFib(n: 4) // 2
getNthFib(n: 5) // 3

getNthFib(n: 10) // 34
