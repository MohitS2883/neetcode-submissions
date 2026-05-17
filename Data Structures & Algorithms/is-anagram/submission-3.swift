class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }

        var mpp: [Character: Int] = [:]

        for char in s {
            mpp[char] = mpp[char, default: 0] + 1
        }

        for char in t {
            mpp[char] = mpp[char, default: 0] - 1
        }

        for key in mpp.keys {
            if mpp[key] != 0 {
                return false
            }
        }
        

        return true
    }
}