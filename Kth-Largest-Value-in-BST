// MARK: - FIND K-TH LARGEST VALUE IN BINARY TREE

class BST {
    var value: Int
    var left: BST?
    var right: BST?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}

func findKthLargestValueInBst(_ tree: BST, _ k: Int) -> Int {
    var array: [Int] = []
    let treeArray: [Int] = traverseTree(tree, array: &array)
    let kthLargest = treeArray[treeArray.count - k]
    return kthLargest
}

func traverseTree(_ tree: BST?, array: inout [Int]) -> [Int] {
    guard let tree = tree else { return [] }
    traverseTree(tree.left, array: &array)
    array.append(tree.value)
    traverseTree(tree.right, array: &array)
    return array
}
