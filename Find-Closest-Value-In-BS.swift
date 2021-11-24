// MARK: - FIND CLOSEST VALUE IN BINARY SEARCH TREE


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

func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    
    // Empty Hash
    var hash: [Int: Int] = [:]
    
    // Get all the distance in hash table
    traverse(visit: tree, hash: &hash, target: target)
    
    var distances: [Int] = []
    
    for (distance, number) in hash {
        distances.append(distance)
    }
    
    distances.sort()
    
    return hash[distances[0]]!
}

func traverse(visit node: BST?, hash: inout [Int: Int], target: Int) {
    guard let node = node else { return }
    
    hash.updateValue(node.value, forKey: abs(node.value - target))
    traverse(visit: node.left, hash: &hash, target: target)
    traverse(visit: node.right, hash: &hash, target: target)
}

