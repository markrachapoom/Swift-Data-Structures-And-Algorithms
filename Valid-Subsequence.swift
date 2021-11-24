// MARK: - VALID SUBSEQUENCE
/// The order in subsequence must follow the order in an array

static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        // [0, 1, 8, 10, 3, 2, 3, 33]
        //     👆
        // [1, 3, 2]
        //  👆
        
        var arrIdx = 0
        var seqIdx = 0
        
        while arrIdx < array.count, seqIdx < sequence.count {
            if array[arrIdx] == sequence[seqIdx] {
                seqIdx += 1
            }
            arrIdx += 1
        }
        
        return seqIdx == sequence.count
        
    }//: function
