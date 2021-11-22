/*
 
 THREE NUMBER SORT
 
 Sort the array depending on the order of the smaller array
 [0, 1, -1, 0, -1, 0, -1, 1]
 [0, 1, -1]

 Output
 [0, 0, 0, 1, 1, 1, -1, -1]
 
 */


func threeNumberSort(_ array: inout [Int], _ order: [Int]) -> [Int] {
    sortSubArray(array: &array, order: order, orderIndex: 0, start: 0)
    return array
}

func sortSubArray(array: inout [Int], order: [Int], orderIndex: Int, start: Int) {
    
    guard orderIndex < order.count else { return }
    guard start < array.count - 1 else { return }
    
    var left = start
    var right = left + 1
    let number = order[orderIndex]
    
    while right < array.count {
        
        if array[right] == number {
            
            if array[left] == number && left != right {
                left += 1
            }
            
            swap(index1: left, index2: right, array: &array)
            
            left += 1
        }
        right += 1
    }
    
    sortSubArray(array: &array, order: order, orderIndex: orderIndex + 1, start: left)
}

func swap(index1: Int, index2: Int, array: inout [Int]) -> Void {
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}


// MARK: - OUTPUT
var array = [0, 4, 1, 0, 4, -1, 0, -1, -1, 0, 1, -1, 4, 4, 4, 4, 4]
let order = [-1, 0, 1, 4]


threeNumberSort(&array, order)
// [-1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 4, 4, 4, 4, 4, 4, 4]

