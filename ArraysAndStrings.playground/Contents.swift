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





/*
 
 One Away: Page 199
 
 There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true pales, pale -> true pale, bale -> true pale, bake -> false
 
 Hints:#23, #97, #130
 */





/*
 
 String Compression: Page 201
 
 Implement a method to perform basic string compression using the counts of repeated characters.
 For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become smaller than the original string, your method should return
 the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 
 Hints:#92, #110
 */

//func getCompressedString(from string: String) -> String {
//
//
//    // loop each slide of similar characters with count
//    var count: Int = 1
//    var index: String.Index = string.index(string.startIndex, offsetBy: 0) // first char
//
//    var table: [Character:Int] = [:]
//
//    for char in string {
//
//        var nextIndex: String.Index = string.index(after: index)
//
//        if string[index] == string[nextIndex] {
//            count += 1
//        } else {
//            count = 0
//            table.updateValue(count, forKey: char)
//        }
//    }
//
//    // compress and return string
//    var compressedString: String = ""
//    for (key, value) in table.enumerated() {
//        compressedString.append(String(key))
//        compressedString.append(String(value))
//    }
//
//
//    return compressedString
//}
//
//print(getCompressedString(from: "aabcccccaaa"))



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
