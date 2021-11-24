// MARK: - BRANCH SUMS

// Binary Search Tree
class BST {
    var value: Int
    var left: BST?
    var right: BST?
    
    init(value: Int) {
        self.value = value
    }
}

// Main
func branchSums(root: BST) -> [Int] {
    var array = [Int]()
    traverse(node: root, array: &array, sum: 0)
    return array
}

// Tree Traversal and accumulate
func traverse(node: BST?, array: inout [Int], sum: Int) -> Void {
    guard let node = node else { return }
    
    if node.left == nil, node.right == nil {
        // Append running sum
        array.append(sum + node.value)
    }
    
    // Traverse Left
    traverse(node: node.left, array: &array, sum: sum + node.value)
    // Traverse Right
    traverse(node: node.right, array: &array, sum: sum + node.value)
}

