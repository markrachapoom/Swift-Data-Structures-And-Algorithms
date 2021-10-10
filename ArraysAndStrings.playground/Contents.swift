import Foundation
// MARK: - ARRAYS AND STRINGS Page 88-91

/*
 
 Is Unique: Page 92
 
 Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
 
 Hints: #44, #7 7 7, #732
 */




/*
 
 Check Permutation: Page 193
 
 Given two strings,write a method to decide if one is a permutation of the other.
 
 Hints: #7, #84, #722, #737
 
 */







// MARK: - URLIFY - PROBLEM 1.3
/*
 
 URLify: Page 194
 
 Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters
 
 and that you are given the "true" length of the string.
 
 (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)
 
 
 Input: "Mr John Smith ", 13
 Output: "Mr%20John%20Smith"
 
 Hints: #53, #118
 
 */

func urlify(string: String) -> (outputStr: String, strLen: Int) {
    
    // get true string len first
    // loop until we find the first index of char and the last of char
    // (lastIndex - firstIndex) + 1 -> true length
    
    guard string.isEmpty == false else { return ("%20", 0) }
    
    // 3 lines for true string length
    let trimmedString: String = string.trimmingCharacters(in: .whitespaces)
    let trueStrLen: Int = trimmedString.count
    
    
    var characters: [String] = []
    
    // change whitespace to %20
    for i in string.indices {
        if string[i].isWhitespace {
            characters.append("%20")
        } else {
            characters.append(String(string[i]))
        }
    }
    
    
    // problem is here
    let returnStr: String = createString(from: characters)
    
    return (returnStr, trueStrLen)
}


func createString(from characters: [String]) -> String {
    
    var string: String = ""
    
    for i in characters.indices {
        string.append(characters[i])
    }
    
    return string
}

let urlifiedOutput: (outputStr: String, strLen: Int) = urlify(string: "Mr John Smith     ")
print("Output: \(urlifiedOutput.outputStr)")
print("True string length: \(urlifiedOutput.strLen)")





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



/*
 
 One Away: Page 199
 
 There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true pales, pale -> true pale, bale -> true pale, bake -> false
 
 Hints:#23, #97, #130
 */





/*
 
 String Compression: Page 201
 
 Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become smaller than the original string, your method should return
 the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 
 Hints:#92, #110
 */





/*
 Rotate Matrix: Page 203
 
 Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
 
 Hints:#51, #100
 */





/*
 Zero Matrix: Page 204
 
 Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.
 
 Hints:#17, #74, #702
 */




/*
 
 String Rotation: Page 206
 
 Assumeyou have a method isSubstringwhich checks if one word is a substring of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring (e.g.,"waterbottle" is a rotation of"erbottlewat").
 
 Hints:#34,#88, #704
 */






/*
 Additional Questions:
 
 Object-Oriented Design (#7.12). Recursion (#8.3), Sorting and Searching (#10.9), C++
 (#12.11), Moderate Problems (#16.8, #16.17, #16.22), Hard Problems (#17.4, #17.7, #17.13, #17.22, #17.26).
 */
