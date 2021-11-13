// MARK: - DEPTH FIRST SEARCH (DPS)
class Node {
    let name: String
    var children: [Node]
    
    init(name: String) {
        self.name = name
        children = []
    }
    
    func depthFirstSearch(array: inout [String]) -> [String] {
        array.append(name)
        for _ in children {
            depthFirstSearch(array: &array)
        }
        return array
    }
    
    func addChild(name: String) -> Node {
        let childNode = Node(name: name)
        children.append(childNode)
        return self
    }
}//: NODE

