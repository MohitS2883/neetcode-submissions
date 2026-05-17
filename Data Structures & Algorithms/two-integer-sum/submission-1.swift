class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var mpp: [Int: Int] = [:]
        for (n, c) in nums.enumerated() {
            var complement = target - c
            if let idx = mpp[complement] {
                return [idx, n]
            }
            mpp[c] = n
        }
        return [-1, -1]
    }
}
