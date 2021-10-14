/*
 
 Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

 There is only one repeated number in nums, return this repeated number.

 You must solve the problem without modifying the array nums and uses only constant extra space.
 
 Example 1:
 Input: nums = [1,3,4,2,2]
 Output: 2
 
 Example 2:
 Input: nums = [3,1,3,4,2]
 Output: 3
 
 Example 3:
 Input: nums = [1,1]
 Output: 1
 
 Example 4:
 Input: nums = [1,1,2]
 Output: 1

 
 */

func findDuplicate(_ array: [Int]) -> Int {
    
    // Empty Hash Table
    var hashTable = [Int:Bool]()
    
    for number in array {
        if hashTable[number] == true {
            // number did appear
            return number
        } else {
            // not found
            hashTable[number] = true
        }
    }
    
    return -1
    
}


var testCase1: [Int] = [1, 3, 4, 2, 2] // 2
var testCase2: [Int] = [3,1,3,4,2] // 3

print(findDuplicate(testCase1)) // 2
print(findDuplicate(testCase2)) // 3



