/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

// MARK: -  IMPLEMENTING USING BUIKT-IN FUNCTION

func solution(A: [Int], K: Int) -> [Int] {
    
    var array = A
    
    for _ in 0..<K {
        if let last = array.last {
            array.insert(last, at: 0)
            array.removeLast()
        }
    }
    
    return array
}


// MARK: - SOLUTION 2
/// time complexity = O(n)

func solution2(array: [Int], round: Int) -> [Int] {
    
    var result = array
    
    for _ in 0..<round {
        result = rotate(result)
    }
    
    return result
}

func rotate(_ array: [Int]) -> [Int] {
    
    guard array.isEmpty == false else { return [] }
    
    var temp = Array<Int>(repeating: 0, count: array.count)
    
    // Shifting
    for i in 0..<array.count - 1 {
        temp[i + 1] = array[i]
    }
    
    // Add last element to the front
    if let last = array.last {
        temp[0] = last
    }
    
    return temp
}




// MARK: - TESTING

let testArray1 = [1, 2, 3, 4, 5]
let testArray2 = [3, 8, 9, 7, 6]

solution(A: [], K: 2) // []
solution(A: testArray1, K: 1) // 5 1 2 3 4
solution(A: testArray1, K: 2) // 4 5 1 2 3
solution(A: testArray1, K: 3) // 3 4 5 1 2

solution(A: testArray2, K: 3) // [9, 7, 6, 3, 8]

solution2(array: [], round: 2) // []
solution2(array: testArray1, round: 1) // 5 1 2 3 4
solution2(array: testArray1, round: 2) // 4 5 1 2 3
solution2(array: testArray1, round: 3) // 3 4 5 1 2

solution2(array: testArray2, round: 3) // [9, 7, 6, 3, 8]


