// MARK: - SORTED SQUARED ARRAY
// input:    [1, 2, 3, 4, 5]
// output:   [1, 4, 9, 16, 25]

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    // Write your code here.
    
    var sortedSquares: [Int] = Array(repeating: 0, count: array.count)
    
    for i in stride(from: 0, through: array.count - 1, by: 1) {
        let value = array[i]
        sortedSquares[i] = value * value
    }
    
    sortedSquares.sort()
    return sortedSquares
}

print(sortedSquaredArray([1, 2, 3, 4, 5]))
print(sortedSquaredArray([-3, -2, -1]))
print(sortedSquaredArray([2, 4, 6, 8, 10]))
