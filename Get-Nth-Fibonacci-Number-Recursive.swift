
// MARK: - GET N-TH FIBONACCI NUMBER RECURSIVELY


func getNthFib(n: Int) -> Int {
    if n == 1 {
        return 0
    } else if n == 2 {
        return 1
    } else {
        return  getNthFib(n: n - 2) + getNthFib(n: n - 1)
    }
}

getNthFib(n: 1) // 0
getNthFib(n: 2) // 1
getNthFib(n: 3) // 1
getNthFib(n: 4) // 2
getNthFib(n: 5) // 3

getNthFib(n: 10) // 34
