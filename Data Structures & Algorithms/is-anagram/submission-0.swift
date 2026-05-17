class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var mpp: [Character: Int] = [:]
        for letter in s {
            var count = mpp[letter, default: 0]
            mpp[letter] = count + 1 
        }
        for letter in t {
            mpp[letter] = (mpp[letter] ?? 0) - 1
        }
        for key in mpp.keys {
            if mpp[key] ?? 0 != 0 {
                return false
            }
        }
        return true
    }
}
