class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.count == 0 || s.count == 1 {
            return true
        }
        let t = s.lowercased()
        var i = t.startIndex
        var j = t.index(before: t.endIndex)
        while i < j {
            if !t[i].isLetter && !t[i].isNumber {
                i = t.index(after: i)
                continue
            }

            if !t[j].isLetter && !t[j].isNumber {
                j = t.index(before: j)
                continue
            }

            if t[i] != t[j] {
                return false
            }

            i = t.index(after: i)
            j = t.index(before: j)
        }

        return true
    }
}