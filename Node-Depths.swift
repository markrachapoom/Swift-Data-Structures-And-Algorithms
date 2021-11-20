// MARK: - FIND SUM OF THE NODE DEPTHS

class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
    }
    
}

// MARK: - SOLUTION 1

static func nodeDepths(_ root: BinaryTree?) -> Int {
    return getSum(root: root, depth: 0)
}

static func getSum(root: BinaryTree?, depth: Int) -> Int {
    guard let root = root else { return 0 }
    let sumLeft = getSum(root: root.left, depth: depth + 1)
    let sumRight = getSum(root: root.right, depth: depth + 1)
    return sumLeft + sumRight + depth
}


// MARK: - SOLUTION 2
static func nodeDepths(_ root: BinaryTree?) -> Int {
    guard let root = root else { return 0 }
    return getSum(root: root, depth: 1)
}

static func getSum(root: BinaryTree?, depth: Int) -> Int {
    
    guard let root = root else { return 0 }
    
    var sum = 0
    
    if let left = root.left {
        sum += depth
        sum += getSum(root: left, depth: depth + 1)
    }
    
    if let right = root.right {
        sum += depth
        sum += getSum(root: right, depth: depth + 1)
    }
    
    return sum
}

