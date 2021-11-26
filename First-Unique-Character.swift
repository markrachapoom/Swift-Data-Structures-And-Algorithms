
// MARK: - FIND FIRST UNIQUE CHARACTER IN STRING
func firstUniqChar(_ s: String) -> Int {
    
    guard s.count >= 2 else { return 0 }
    
    var left = 0
    var right = left + 1
    
    while left <= right, right < s.count {
        let idxLeft = s.index(s.startIndex, offsetBy: left)
        let idxRight = s.index(s.startIndex, offsetBy: right)
        
        if s[idxLeft] == s[idxRight] {
            left += 1
            right = left + 1
            continue
        }
        
        right += 1
    }
    
    return left
}
