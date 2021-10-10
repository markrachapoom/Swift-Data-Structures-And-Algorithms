// MARK: - PALINDROM - PROBLEM 1.4

/*
 
 Palindrome Permutation: Page 195
 
 Given a string, write a function to check if it is a permutation of a palin­ drome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
 
 Input: Tact Coa
 Output: True (permutations: "taco cat", "atco eta", etc.)
 
 Hints:#106,#121,#134,#136
 */

// t a c o c a t
// 1 2 3 4 5 6 7
// check in pairs 1,7        2, 6        3, 5    left out
// 3 times, that's length / 2

func isPalindrome(string: String) -> Bool {
    
    guard string.isEmpty == false else { return false }
    
    var leftIndex: String.Index = string.index(string.startIndex, offsetBy: 0) // start
    var rightIndex: String.Index = string.index(string.endIndex, offsetBy: -1) // end
    
    for _ in 0..<(string.count / 2) {
        if string[leftIndex] != string[rightIndex] { return false }
        leftIndex = string.index(after: leftIndex)
        rightIndex = string.index(before: rightIndex)
    }//: LOOP
    
    return true
}

print(isPalindrome(string: "tacocat")) // true
print(isPalindrome(string: "hello")) // false

