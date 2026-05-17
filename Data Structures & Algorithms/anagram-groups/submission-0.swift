class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans: [[String]] = []
        var appended: [Bool] = Array(repeating: false, count: strs.count)
        for i in stride(from: 0, to: strs.count, by: 1) {
            if !appended[i] {
                var word = strs[i]
                appended[i] = true
                var subAns: [String] = [word]
                for j in stride(from: i + 1, to: strs.count, by: 1) {
                    if isAnagram(word, strs[j]) && !appended[j] {
                        appended[j] = true
                        subAns.append(strs[j])
                    }
                }
                ans.append(subAns)
            }
        }
        return ans
    }

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
