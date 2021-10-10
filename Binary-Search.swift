
import XCTest
// Binary Search


// Time Complexity: O(log n)
// Space Complexity:


// MARK: - BINARY SEARCH
func binarySearch(_ target: Int, from array: [Int]) -> Bool {
    
    guard array.isEmpty == false else { return false }
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        
        if target == array[middleIndex] {
            return true
        } else if target < array[middleIndex] {
            rightIndex = middleIndex - 1
        } else {
            leftIndex = middleIndex + 1
        }
        
    }
    
    return false
}



func recursiveBinarySearch(_ target: Int, from array: [Int]) -> Bool {
    
    guard array.isEmpty == false else { return false }
    
    var leftIndex: Int = 0
    var rightIndex: Int = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex: Int = (leftIndex + rightIndex) / 2
        var subArray: [Int] = []
        
        if target == array[middleIndex] {
            return true
        } else if target < array[middleIndex] {
            rightIndex = middleIndex - 1
        } else {
            leftIndex = middleIndex + 1
        }
        
        subArray = Array(array[leftIndex...rightIndex])
        recursiveBinarySearch(target, from: subArray)
    }
    
    return false
    
}


// MARK: - UNIT TESTING
class UnitTester: XCTestCase {
    
    // PROPERTIES
    
    let targets: [Int] = [3, 3, 3, 89]
    
    let testCases: [[Int]] = [
        [],
        [1, 2, 3],
        [1, 2, 3, 4, 5, 6, 7, 8, 9],
        [1, 4, 6, 8, 9, 12, 14, 48, 89, 1023]
    ]
    
    
    enum `Type` {
        case general
        case recursive
    }
    
    // METHODS
    func testBinarySearch(type: `Type`) {
        for i in 0..<targets.count {
            
            var truthValue: Bool = false
            
            switch type {
            case .general:
                truthValue = binarySearch(targets[i], from: testCases[i])
            case .recursive:
                truthValue = recursiveBinarySearch(targets[i], from: testCases[i])
            }
            
            if truthValue {
                print("✅ Number \(targets[i]) exists in \(testCases[i])")
            } else {
                print("❌ Number \(targets[i]) does not exist in \(testCases[i])")
            }
            
            XCTAssertTrue(truthValue, "Pass the test")
            
        }
    }
}


// MARK: - CALLING
var unitTester = UnitTester.init()
unitTester.testBinarySearch(type: .general)
print()
unitTester.testBinarySearch(type: .recursive)
