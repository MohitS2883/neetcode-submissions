class Solution {
    func rob(_ nums: [Int]) -> Int {
        var memo = Array(repeating: -1, count: nums.count)
        return helper(nums.count - 1, nums, &memo)
    }

    func helper(_ idx: Int, _ nums: [Int], _ memo: inout [Int]) -> Int {
        if idx < 0 {
            return 0
        }
        if memo[idx] != -1 {
            return memo[idx]
        }
        let left = helper(idx - 1, nums, &memo)
        let right = nums[idx] + helper(idx - 2, nums, &memo)
        memo[idx] = max(left, right)
        return memo[idx]
    }
}
