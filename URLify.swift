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

