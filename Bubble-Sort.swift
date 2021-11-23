
// MARK: - BUBBLE SORT

func bubbleSort(array: inout [Int]) -> [Int] {
    
    guard array.count >= 2 else { return array }
    
    for left in 0..<array.count - 1 {
        for right in left+1..<array.count {
            if array[left] > array[right] {
                swap(index1: left, index2: right, array: &array)
            }
        }
    }
    
    return array
}

func swap(index1: Int, index2: Int, array: inout [Int]) {
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}


// MARK: - TESTING

var array: [Int] = [1, 55, 3, 78, -2, 4, 6, 8, 0, 334, 1, 2, 54]
var result = bubbleSort(array: &array)
print(result)


