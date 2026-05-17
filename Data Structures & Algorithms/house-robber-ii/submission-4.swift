class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        let i1Arr = Array(nums[1..<nums.count])
        let i2Arr = Array(nums[0..<(nums.count - 1)])
        var memo1 = Array(repeating: -1, count: i1Arr.count)
        var memo2 = Array(repeating: -1, count: i2Arr.count)

        let i1 = helper(i1Arr.count - 1, i1Arr, &memo1)
        let i2 = helper(i2Arr.count - 1, i2Arr, &memo2)

        return max(i1, i2)
    }

    func helper(_ idx: Int, _ nums: [Int], _ memo: inout [Int]) -> Int {
        if idx < 0 {
            return 0
        }
        if memo[idx] != -1 {
            return memo[idx]
        }
        let pick = nums[idx] + helper(idx - 2,  nums, &memo)
        let notPick = helper(idx - 1, nums, &memo)
        memo[idx] = max(pick, notPick)
        return memo[idx]
    }
}
