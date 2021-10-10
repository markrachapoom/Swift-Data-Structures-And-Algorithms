// MARK: - PALINDROM - PROBLEM 1.4

/*
 
 Palindrome Permutation: Page 195
 
 Given a string, write a function to check if it is a permutation of a palin­ drome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
 
 Input: Tact Coa
 Output: True (permutations: "taco cat", "atco eta", etc.)
 
 Hints:#106,#121,#134,#136
 */

func isPalindrome(string: String) -> Bool {

    guard string.isEmpty == false else { return false }

    // tac o cat
    // check in pairs
    var leftIndex: String.Index = string.index(string.startIndex, offsetBy: 0) // first element
    var rightIndex: String.Index = string.index(string.endIndex, offsetBy: -1) // before nil
    
    for _ in 1...(string.count / 2) {
        
        print("Comparing \(string[leftIndex]) and \(string[rightIndex])")

        if string[leftIndex] != string[rightIndex] {
            return false
        }
        
        leftIndex = string.index(after: leftIndex)
        rightIndex = string.index(before: rightIndex)
    }

    return true
}

var palindromeString = "tcact"
var isPalindrome: Bool = isPalindrome(string: palindromeString)
print("Is \(palindromeString) palindrome: \(isPalindrome)")

