class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }

        let sortedS = Array(s.sorted())
        let sortedT = Array(t.sorted())

        var i = 0
        while i < sortedS.count {
            if sortedS[i] != sortedT[i] {
                return false
            }
            i += 1
        }
        return true
    }
}