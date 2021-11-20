// MARK: - SELECTION SORT

func selectionSort(array: inout [Int]) -> [Int] {
    for i in 0..<array.count {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        // swap
        swap(index1: i, index2: minIndex, in: &array)
    }
    
    return array
}

func swap(index1: Int, index2: Int, in array: inout [Int]) {
    let tempValue = array[index1]
    array[index1] = array[index2]
    array[index2] = tempValue
}

