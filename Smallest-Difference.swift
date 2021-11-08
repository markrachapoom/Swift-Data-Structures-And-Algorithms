// MARK: - SMALLEST DIFFERENCE [MEDIUM]
func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    // Write your code here.
    
    // [diff:pair]
    // [2, [4, 2]]
    var hash: [Int  :   [Int]   ] = [:]
    
    for numOne in arrayOne {
        for numTwo in arrayTwo {
            hash.updateValue([numOne, numTwo], forKey: abs(numOne - numTwo))
        }
    }
    
    let pair: [Int] = findSmallestDiff(from: hash)
    
    return pair
}

func findSmallestDiff(from hash: [Int: [Int]]) -> [Int] {
    
    var array: [Int] = []
    
    for number in hash.keys.indices {
        array.append(hash[number].key)
    }
    
    array.sort()
    return hash[array[0]]!
}

var arrayOne = [-1, 5, 10, 20, 28, 3]
var arrayTwo = [26, 134, 135, 15, 17]

print(smallestDifference(arrayOne: &arrayOne, arrayTwo: &arrayTwo))
